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

Route::get('/', 'FrontEnd\NewsController@index')->name('frontend.index');
Route::get('deletecomment/{id}/{idnews}', 'FrontEnd\NewsController@deleteComment')->name('frontend.deletecomment');
Route::get('/search', 'FrontEnd\NewsController@Search')->name('frontend.search');
Route::get('/{id}', 'FrontEnd\NewsController@sortCategory')->name('frontend.category');
Route::get('/home/contact', 'FrontEnd\OtherController@contact')->name('frontend.contact');
Route::post('/home/contact', 'FrontEnd\OtherController@postContact')->name('frontend.contact');
Route::get('/home/about', 'FrontEnd\OtherController@about')->name('frontend.about');
Route::get('news/{id}', 'FrontEnd\NewsController@details')->name('frontend.news');
Route::post('news/comment', 'FrontEnd\NewsController@comment')->name('frontend.news.comment');

Route::group(['prefix' => 'admin'], function () {
    Route::get('/contact', 'Admin\ContactController@list')->name('contact.list');

    Route::group(['prefix' => 'news'], function () {
        Route::post('uploadimage', 'Admin\NewsController@uploadImage')->name('news.uploadimage');
        Route::get('create', 'Admin\NewsController@createAndUpdate')->name('news.create');
        Route::get('update/{id}', 'Admin\NewsController@createAndUpdate')->name('news.update');
        Route::post('store/{id?}', 'Admin\NewsController@store')->name('news.store');
        Route::get('delete/{id}', 'Admin\NewsController@delete')->name('news.delete');
        Route::get('/', 'Admin\NewsController@index')->name('news.index');
    });

    Route::group(['prefix' => 'categorynews'], function () {
        Route::get('create', 'Admin\CategoryNewsController@createAndUpdate')->name('categorynews.create');
        Route::get('update/{id}', 'Admin\CategoryNewsController@createAndUpdate')->name('categorynews.update');
        Route::post('store/{id?}', 'Admin\CategoryNewsController@store')->name('categorynews.store');
        Route::get('delete/{id}', 'Admin\CategoryNewsController@delete')->name('categorynews.delete');
        Route::get('/', 'Admin\CategoryNewsController@index')->name('categorynews.index');
    });
});
