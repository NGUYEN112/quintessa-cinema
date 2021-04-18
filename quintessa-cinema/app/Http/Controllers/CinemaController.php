<?php

namespace App\Http\Controllers;

use App\Models\Film;
use App\Models\Screening;
use App\Models\Seat;
use App\Models\Ticket;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
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
        $films = Film::select('name')->where('id', $id)->get();
        foreach ($films as $film) {
            $title = $film->name;
        }
        $film = Film::where('id', $id)->get();
        $relate_films = Film::where('status', '1')
            ->inRandomOrder()->limit(2)->get();

        $screenings = Screening::where('film_id',$id)
        ->get();

        for ($i = 0; $i < count($screenings); $i++) {
            $screening = Screening::where([['film_id', $id], ['cinema_id', $screenings[$i]->cinema_id]])
            ->get();
            for ($k = 0; $k < count($screening); $k++) {
                $p = Screening::where([['film_id', $id], ['cinema_id', $screenings[$i]->cinema_id], ['date', $screening[$k]->date]])->get();
                for ($j = 0; $j < count($p); $j++) {
                    $t = Screening::where([['film_id', $id], ['cinema_id', $screenings[$i]->cinema_id], ['date', $screening[$k]->date], ['room_id', $p[$j]->room_id]])->get();
                    $p[$j]['time'] = $t;
                }
                $screening[$k]['room_id'] = $p;
            }

            $screenings[$i]['date'] = $screening;
        }
        // dd($screenings);

        return view('cinemas.films', compact('title','film', 'relate_films', 'screenings'));
    }

    public function orderTicketDetail($id) {
        $screenings = Screening::where('id',$id)->get();
        foreach ($screenings as $screening) {
            $room_id=$screening->room_id;
        }
        // $datghe=datghe::where('id_lichchieu',$id)->get();
        $seats = Seat::where('room_id',$room_id)->get();
        for($i=0;$i<count($seats);$i++){
            $seat = Seat::where([['room_id',1],['row',$seats[$i]->row]])->get();

            $seats[$i]['number']=$seat;
        }
        
        $tickets = Ticket::where('screening_id',$id)->get();
        return view('cinemas.orderticket',compact('screenings','seats','tickets'));
    }

    public function publishedFilm() {
        $publisheds = Film::where('status','1')->get();
        return view('cinemas.published-film', compact('publisheds'));
    }

    public function unreleasedFilm() {
        $unreleaseds = Film::where('status','0')->get();
        return view('cinemas.unreleased-film', compact('unreleaseds'));
    }

    public function orderticket(Request $request) {
        $seats = $request->allseat;
        for ($i=0; $i < count($seats) ; $i++) { 
            $tickets = Ticket::where([['screening_id',$request->screeningid],['seat_id',$seats[$i]]])->update([
                'user_id'=>$request->userid
            ]);
        }
    }
}
