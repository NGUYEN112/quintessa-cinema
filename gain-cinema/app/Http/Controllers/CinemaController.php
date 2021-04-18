<?php

namespace App\Http\Controllers;

use App\Models\Film;
use App\Models\Screening;
use App\Models\Seat;
use Illuminate\Http\Request;

class CinemaController extends Controller
{
    public function home(){
        return view('cinemas.home');
    }

    public function showFilmPage() {
        $films = Film::all();
        return view('cinemas.films',compact('films'));
    }

    public function showScreeningPage($id) {
        $screenings = Screening::all();
        $film = Film::findOrFail($id);
        return view('cinemas.screenings',compact('film','screenings'));
    }

    public function showTicketPage($id) {
        $screening = Screening::findOrFail($id);
        $films = Film::all();
        $seats = Seat::all();
        return view('cinemas.ticket',compact('screening','films','seats'));
    }

    public function storeOrder(Request $request) {
        dd($request);
        
    }

    public function showMemberPage() {
        return view('cinemas.members');
    }

    public function showAboutUsPage() {
        return view('cinemas.about-us');
    }
}
