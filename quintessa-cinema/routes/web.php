<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CinemaController;
use App\Http\Controllers\LoginController;
use App\Models\Ticket;

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
    Route::get('/films/{id}',[CinemaController::class,'filmDetail'])->name('cinema.filmDetail')->where(['film_id'=>'[0-9]+']);
    Route::get('/orderticket/{id}',[CinemaController::class,'orderTicketDetail'])->name('cinema.orderticket');
    Route::get('/published',[CinemaController::class,'publishedFilm'])->name('cinema.published');
    Route::get('/unreleased',[CinemaController::class,'unreleasedFilm'])->name('cinema.unreleased');
    // Route::post('/ticket/{id}',[CinemaController::class,'storeOrder'])->name('cinema.order');
    Route::get('/members',[CinemaController::class,'showMemberPage'])->name('cinema.member');
    Route::get('/about-us',[CinemaController::class,'showAboutUsPage'])->name('cinema.about-us');

    Route::get('/profile',[CinemaController::class,'showProfilePage'])->name('cinema.profile');
    Route::get('/avatar',[CinemaController::class,'showAvatar'])->name('cinema.avatarform');
    Route::post('/changeavatar',[CinemaController::class,'changeAvatar'])->name('cinema.change-avatar');


    Route::get('/login',[AuthController::class,'loginPage'])->name('cinema.loginpage');
    Route::post('/login',[AuthController::class,'login'])->name('cinema.login');
    Route::get('/register',[AuthController::class,'registerPage'])->name('cinema.registerpage');
    Route::post('/register',[AuthController::class,'register'])->name('cinema.register');
    Route::get('/logout',[AuthController::class,'logout'])->name('cinema.logout');
});

Route::group(['prefix' =>'admin','middleware' => 'admin'], function() {
    Route::get('/',[AdminController::class,'homeAdmin'])->name('admin.home');

    //route quan ly cinema//
    Route::get('/managefilm',[AdminController::class,'manageFilm'])->name('admin.managefilm');
    Route::post('/managefilm',[AdminController::class,'getFilmList'])->name('admin.getFilmList');
    Route::get('/managecinema',[AdminController::class,'manageCinema'])->name('admin.managecinema');

    Route::get('/managescreening',[AdminController::class,'manageScreening'])->name('admin.managescreening');
    Route::get('/managescreening/list',[AdminController::class,'getScreeningList'])->name('admin.getscrlist');

    Route::get('/manageroom',[AdminController::class,'manageRoom'])->name('admin.manageroom');
    Route::get('/manageseat',[AdminController::class,'manageSeat'])->name('admin.manageseat');
    Route::get('/seatlist/{id}',[AdminController::class,'showSeat'])->name('admin.showseat');
    Route::get('/manageuser',[AdminController::class,'manageUser'])->name('admin.manageuser');
    Route::get('/manageticket',[AdminController::class,'manageTicket'])->name('admin.manageticket');

    //route thao tac film//
    Route::get('/addfilm',[AdminController::class,'addFilmPage'])->name('admin.addfilm.page');
    Route::post('/addfilm',[AdminController::class,'addFilm'])->name('admin.addfilm');
    Route::get('/editfilm/{id}',[AdminController::class,'editFilmPage'])->name('admin.editfilm.page');
    Route::post('/editfilm/{/id}',[AdminController::class,'validationFilm'])->name('admin.editfilm');
    Route::get('/deletefilm/{id}',[AdminController::class,'deleteFilm'])->name('admin.deletefilm');

    //route thao tac cinema//
    Route::get('/addcinema',[AdminController::class,'addCinemaPage'])->name('admin.addcinema.page');
    Route::post('/addcinema',[AdminController::class,'addCinema'])->name('admin.addcinema');
    Route::get('/deletecinema/{id}',[AdminController::class,'deleteCinema'])->name('admin.deletecinema');

    //route thao tac screenings//
    Route::get('/addscreening',[AdminController::class,'addScreeningPage'])->name('admin.addscreening.page');
    Route::post('/addscreening',[AdminController::class,'addScreening'])->name('admin.addscreening');
    Route::get('/editscreening/{id}',[AdminController::class,'editScreeningPage'])->name('admin.editscreening.page');
    Route::post('/editscreening/{id}',[AdminController::class,'editScreening'])->name('admin.editscreening');
    Route::get('/deletescreening/{id}',[AdminController::class,'deleteScreeningPage'])->name('admin.deletescreening');

    //route thao tac room
    Route::get('/addroom',[AdminController::class,'addRoomPage'])->name('admin.addroom.page');
    Route::post('/addroom',[AdminController::class,'addRoom'])->name('admin.addroom');
    Route::get('/deleteroom/{id}',[AdminController::class,'deleteRoom'])->name('admin.deleteroom');
});


Route::get('ajax/seat/{id}',[AdminController::class,'showSeat']);
Route::get('ajax/screening/{id}',[AdminController::class,'getScreening']);
Route::get('ajax/room/{id}',[AdminController::class,'getRoom']);
Route::post('/ajaxorderticket',[CinemaController::class,'orderticket'])->name('store.ajaxorderticket');

Route::get('link', function() {
   $screening = Ticket::find(1)->screening->film;
   return $screening;
});
