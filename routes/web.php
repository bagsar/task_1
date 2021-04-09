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

// Route::get('/flug', function() {
//     Artisan::call('cache:clear');
//      Artisan::call('route:clear');
//       Artisan::call('config:clear');
//        Artisan::call('view:clear');
    
//      return view('page');
// });

// Route::get('/', function () {
//     return view('page');
// });
// Route::get('/page', function () {
//     return view('page');
// });
Route::get('/page',       'App\Http\Controllers\TableController@tableTest');
Route::post('/submit',       'App\Http\Controllers\TableController@submit');
Route::get('/table',      'App\Http\Controllers\TableController@Table')->name('table');
Route::post('/nojdata',      'App\Http\Controllers\TableController@nojData')->name('nojData');


Route::post('/submitlist',       'App\Http\Controllers\TableController@submitlist');
Route::post('/listdata',      'App\Http\Controllers\TableController@listData')->name('list');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
