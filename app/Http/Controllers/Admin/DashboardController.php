<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use App\Article;
use MetaTag;
use App\User;

class DashboardController extends Controller
{

    //Dashboard
		public function dashboard(){
				MetaTag::setTags(['title'=> 'Админ панель']);
				return view('admin.dashboard', [
						'categories' => Category::LastCategories(5),
						'articles' => Article::LastArticles(5),
						'count_categories' => Category::count(),
						'count_articles' => Article::count(),
						'count_users' => User::count()
				]);
		}
}
