<?php

use Illuminate\Support\Facades\Route;

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

$router->get('teams','Dashboard@list');
$router->post('addteam','Dashboard@store');

//temporary json list
$router->get('getpatients','Dashboard@patients');

$router->get('help','GraphqlController@show');
$router->post('test','GraphqlController@store');


Route::post('/foo', function () {
    echo "test routing";
    return;
});