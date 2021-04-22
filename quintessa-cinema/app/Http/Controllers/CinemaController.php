<?php

namespace App\Http\Controllers;

use App\Models\Film;
use App\Models\Screening;
use App\Models\Seat;
use App\Models\Ticket;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;

class CinemaController extends Controller
{
    public function home()
    {
        $publisheds = Film::where('status', '1')->limit(4)->get();
        $unreleaseds = Film::where('status', '0')->limit(4)->get();
        return view('cinemas.home', compact('publisheds', 'unreleaseds'));
    }



    public function filmDetail($id)
    {

        $film = Film::findOrFail($id);
        $relate_films = Film::where('status', '1')
            ->inRandomOrder()->limit(2)->get();

        $screenings = Screening::select('cinema_id')
            ->where('film_id', $id)
            ->groupBy('cinema_id')
            ->distinct()
            ->get();

        for ($i = 0; $i < count($screenings); $i++) {
            $screening = Screening::select('date')
                ->where([['film_id', $id], ['cinema_id', $screenings[$i]->cinema_id]])
                ->groupBy('date')
                ->distinct()
                ->get();
            for ($k = 0; $k < count($screening); $k++) {
                $datesrc = Screening::select('room_id')
                    ->where([['film_id', $id], ['cinema_id', $screenings[$i]->cinema_id], ['date', $screening[$k]->date]])
                    ->groupBy('room_id')
                    ->distinct()
                    ->get();
                for ($j = 0; $j < count($datesrc); $j++) {
                    $timesrc = Screening::where([['film_id', $id], ['cinema_id', $screenings[$i]->cinema_id], ['date', $screening[$k]->date], ['room_id', $datesrc[$j]->room_id]])->distinct()->get();
                    $datesrc[$j]['time'] = $timesrc;
                }
                $screening[$k]['room_id'] = $datesrc;
            }

            $screenings[$i]['date'] = $screening;
        }
        // var_dump($screenings[1]);

        return view('cinemas.films', compact('film', 'relate_films', 'screenings'));
    }

    public function orderTicketDetail($id)
    {
        $screenings = Screening::where('id', $id)->get();
        foreach ($screenings as $screening) {
            $room_id = $screening->room_id;
        }

        $seats = Seat::select('row')
            ->where('room_id', $room_id)
            ->groupBy('row')
            ->distinct()
            ->get();

        for ($i = 0; $i < count($seats); $i++) {
            $seat = Seat::where([['room_id', 1], ['row', $seats[$i]->row]])->get();

            $seats[$i]['number'] = $seat;
        }

        $tickets = Ticket::where('screening_id', $id)->get();
        return view('cinemas.orderticket', compact('screenings', 'seats', 'tickets'));
    }

    public function publishedFilm()
    {
        $publisheds = Film::where('status', '1')->get();
        return view('cinemas.published-film', compact('publisheds'));
    }

    public function unreleasedFilm()
    {
        $unreleaseds = Film::where('status', '0')->get();
        return view('cinemas.unreleased-film', compact('unreleaseds'));
    }

    public function orderticket(Request $request)
    {
        $seats = $request->allseat;
        $tickets = new Ticket();
        for ($i = 0; $i < count($seats); $i++) {
        $tickets->screening_id = $request->screening_id;
        $tickets->user_id = $request->user_id;
        $tickets->seat_id = $seats[$i];
        $tickets->save();
        }
    }
}
