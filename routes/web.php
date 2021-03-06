<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/blog/category/{slug?}', 'BlogController@category')->name('category');
Route::get('/blog/article/{slug?}', 'BlogController@article')->name('article');
Route::get('/blog/tag/{slug?}', 'BlogController@tag')->name('tag');

Route::group(['prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => ['auth', 'admin']], function(){

	Route::get('/', 'DashboardController@dashboard')->name('admin.index');
	Route::resource('/category', 'CategoryController', ['as'=> 'admin']);
	Route::resource('/article', 'ArticleController', ['as'=> 'admin']);


	Route::group(['prefix' => 'user_managment', 'namespace' => 'UserManagment'], function(){
			Route::resource('/user', 'UserController', ['as'=> 'user_managment']);
	});



		Route::post('/upload/fileUpload', 'ImageController@upload')->name('ckeditor.upload');

		Route::post('/upload/image', 'ImageController@add')->name('img_add');

		Route::resource('/tags', 'TagController', ['as'=> 'admin']);

		Route::get('/search', "ArticleController@search")->name('admin_search');
		Route::get('/autocomplete', "ArticleController@autocomplete")->name('admin_autocomplete');

});

Route::get('/autocomplete', "SearchController@search");
Route::get('/search', "SearchController@index")->name('search');

Route::get('/', 'BlogController@front')->name('front');


Auth::routes();



Route::get('/home', 'HomeController@index')->name('home');
