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
header('Access-Control-Allow-Origin:  *');
header('Access-Control-Allow-Methods:  POST, GET, OPTIONS, PUT, DELETE');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Origin, Authorization');


Route::get('/', function () {
    return view('welcome');
});

Route::get('/nutritions/{nutritionId}/{phone}/{pin}', ['as' => 'nutrition_list', 'uses' => 'NutritionController@nutritions']);
//Route::post('/nutritions', ['as' => 'nutrition_list_post', 'uses' => 'NutritionController@store']);
//Route::get('/nut', ['as' => 'nutrition_list', 'uses' => 'NutritionController@index'])->middleware('cors');

//Route::group(['middleware' => 'cors'], function() {
    Route::resource('nutrition','NutritionController');
//});