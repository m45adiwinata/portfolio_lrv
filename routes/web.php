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

// Route::get('/', function () {
//     return view('start');
// });
Route::get('/about', 'HomeController@about')->name('about');

Auth::routes();
Route::get('/', 'HomeController@index')->name('home');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/services', 'HomeController@service')->name('services');
Route::get('/projects', 'HomeController@projects')->name('projects');
Route::get('/testimonials', 'HomeController@testimonials')->name('testimonials');
