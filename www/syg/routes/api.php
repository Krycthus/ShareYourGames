<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Routes Utilisateurs
Route::middleware('ip')->get('/utilisateur','UtilisateursController@index');
Route::get('/utilisateur/{id}', 'UtilisateursController@show');

//Routes Games
Route::get('/game','GameController@index');
Route::get('/game/{id}','GameController@show');
