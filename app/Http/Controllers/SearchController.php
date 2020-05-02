<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Article;
class SearchController extends Controller
{
		public function index(Request $request){
				$search =trim(strip_tags($request->get('q')));
				$res = Article::where('title', 'LIKE', '%'.$search.'%')
						->get();

				return view('blog.search', compact('res', 'search'));
		}
    public function search(Request $request){
				$search =trim(strip_tags($request->get('q')));

		    //return response()->json($request->all());
				$res = DB::table('articles')
						->where('title', 'LIKE', '%'.$search.'%')
						->get();
		    return response()->json($res);

    }
}
