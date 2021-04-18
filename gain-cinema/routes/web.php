<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CinemaController;
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

Route::group(['prefix' => 'cinema'], function() {
    Route::get('/',[CinemaController::class,'home'])->name('cinema.home');
    Route::get('/films',[CinemaController::class,'showFilmPage'])->name('cinema.film');
    Route::get('/screenings/{id}',[CinemaController::class,'showScreeningPage'])->name('cinema.screening');
    Route::get('/ticket/{id}',[CinemaController::class,'showTicketPage'])->name('cinema.ticket');
    Route::post('/ticket/{id}',[CinemaController::class,'storeOrder'])->name('cinema.order');
    Route::get('/members',[CinemaController::class,'showMemberPage'])->name('cinema.member');
    Route::get('/about-us',[CinemaController::class,'showAboutUsPage'])->name('cinema.about-us');

    Route::get('/login',[AuthController::class,'showLoginPage'])->name('cinema.loginpage');
    Route::get('/register',[AuthController::class,'showRegisterPage'])->name('cinema.registerpage');

});