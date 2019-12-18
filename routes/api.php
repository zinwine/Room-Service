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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::resource('townships', 'API\TownShipController');
Route::get('rooms', 'API\RoomController@index');
Route::get('rooms/{type}', 'API\RoomController@typeRoom'); 
Route::get('room/{id}', 'API\RoomController@show');
Route::get('rooms/{room_type}/{township}/{price}/{user_type}', 'API\RoomController@selectRoom');

Route::post('register', 'API\RegisterController@register'); 

// Route::middleware('auth:api')->group( function () {
// 	Route::resource('townships', 'API\TownShipController');
// });