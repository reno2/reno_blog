<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Article;

class BlogController extends Controller
{
    //

		public function front(Request $request){
				$articles = Article::where('on_front', 1)->take(10)->get();

				return view('blog.home', compact('articles'));
				//
		}

		public function category($slug){

				$category = Category::where('slug', $slug)->first();
				//dd($category->articles()->where('published', 0)->paginate(12));
				return view('blog.category', [
						'category' => $category,
						'articles' => $category->articles()->where('published', 1)->paginate(12)
				]);
		}

		public function article($slug){

				$article = Article::where('slug', $slug)->first();
				//dd($category->articles()->where('published', 0)->paginate(12));
				return view('blog.article', [
						'article' => $article,
						//'articles' => $category->articles()->where('published', 1)->paginate(12)
				]);
		}
}
