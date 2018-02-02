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

Route::get('/', function () {
    return view('welcome');
});

Route::get('a-propos', 'PagesController@about');

Route::get('/home/{name}', function($name){

    return "Salut $name";
});

/*
Route::get('welcome', 'UserController@index');

Route::get('/salut/{name}','Controller@index');

Route::group(['prefix' => 'admin', 'middleware' => 'ip'], function() {
    
    Route::get('accueil/{name}', function ($name) {
        return "Salut $name";
    });

});
*/