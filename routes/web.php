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

Route::get('news/{id}', 'FrontEnd\NewsController@details')->name('frontend.news');

Route::group(['prefix' => 'admin'], function () {
    Route::group(['prefix' => 'news'], function () {
        Route::get('create', 'Admin\NewsController@createAndUpdate')->name('news.create');
        Route::get('update/{id}', 'Admin\NewsController@createAndUpdate')->name('news.update');
        Route::post('store/{id?}', 'Admin\NewsController@store')->name('news.store');
        Route::get('delete/{id}', 'Admin\NewsController@delete')->name('news.delete');
        Route::get('/', 'Admin\NewsController@index')->name('news.index');
    });
});
