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
    return view('layouts.login');
})->name('layouts.login');
Route::get('/signup', function () {
    return view('layouts.register');
});

Route::resource('/task', 'TaskController')->middleware(['auth']);
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
