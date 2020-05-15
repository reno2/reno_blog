<?php

namespace App\Http\Controllers\Admin;

use App\Article;
use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;
use Mockery\Exception;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

    		//MetaTag\
    		if($request->get('sort')){
    				$sort = $request->get('sort');

    				$articles = Article::orderBy('sort', $sort)->paginate(10);

		    }
    	  else{
			      $articles = Article::orderBy('sort', 'desc')->orderBy('created_at', 'desc')->paginate(10);
	      }
        return view('admin.articles.index',

        		 compact('articles')
		        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    		$tags = \App\Tag::all();
    		//dd(Category::with('children')->where('parent_id', 0)->get());
        return view('admin.articles.create', [
        		'tags' => $tags,
        		'article' => [],
		        'categories' => Category::with('children')->where('parent_id', 0)->get(),
		        'delimiter' => ''
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    		$r = $request->all();
    		$r['on_front'] = Input::has('on_front') ? true : false;
    	//	dd($r );



        $article = Article::create($r);
        // Categories
		    if($request->input('categories')):
					$article->categories()->attach($request->input('categories'));
		    endif;
		    if($request->input('tags')):
				    $article->tags()->attach($request->input('tags'));
		    endif;

		    return redirect()->route('admin.article.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function show(Article $article)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function edit(Article $article)
    {
    		$tags = \App\Tag::all();
    		$tags2 = [];
    		foreach($tags as $tag){
    				$tags2[$tag->id] = $tag->name;
		    }

		    return view('admin.articles.edit', [
				    'article' => $article,
				    'categories' => Category::with('children')->where('parent_id', 0)->get(),
				    'tags' => $tags,
				    'delimiter' => ''
		    ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Article $article)
    {
		    $this->validate($request, [
				    'slug' => Rule::unique('articles')->ignore($article->id, 'id'),
				    'title' => 'required'
		    ]);

		    $r = $request->all();
		    $r['on_front'] = Input::has('on_front') ? true : false;

		   //dd($r);
		    try
		    {
				    $update = $article->update($r);


				    //Tags
				    $article->tags()->detach();
				    if ($request->input('tags')):
						    $article->tags()->attach($request->input('tags'));
				    endif;


				    //Categories
				    $article->categories()->detach();
				    if ($request->input('categories')):
						    $article->categories()->attach($request->input('categories'));
				    endif;

				    session()->flash('message', "Категория  изменена " . $article->title);
				    if(in_array('reload', $r, true))
				    {
						    $tags  = \App\Tag::all();
						    $tags2 = [];
						    foreach ($tags as $tag)
						    {
								    $tags2[$tag->id] = $tag->name;
						    }

						    return view('admin.articles.edit', [
								    'article'    => $article,
								    'categories' => Category::with('children')->where('parent_id', 0)->get(),
								    'tags'       => $tags,
								    'delimiter'  => ''
						    ]);
				    }
				    else
				        return redirect()->route('admin.article.index');

		    }catch (Exception $exception){

				    session()->flash('message', $exception->getMessage());
				    return redirect()->route('admin.article.index');
		    }



    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function destroy(Article $article)
    {
		    $article->categories()->detach();
		    $article->delete();
		    return redirect()->route('admin.article.index');
    }



		public function search(Request $request){
				$search =trim(strip_tags($request->get('q')));
				$articles = Article::where('title', 'LIKE', '%'.$search.'%')
						->paginate(10);

				return view('admin.articles.index',

						[
								'articles' => $articles,
								'title' => 'Результаты поиска'
						]
				);
		}
		public function autocomplete(Request $request){
				$search =trim(strip_tags($request->get('q')));

				//return response()->json($request->all());
				$res = DB::table('articles')
						->where('title', 'LIKE', '%'.$search.'%')
						->get();
				return response()->json($res);

		}

}
