<?php

namespace App\Http\Controllers;

use App\Models\Cinema;
use App\Models\Film;
use App\Models\Room;
use App\Models\Screening;
use App\Models\Seat;
use App\Models\Ticket;
use App\Models\User;
use Illuminate\Http\Request;
class AdminController extends Controller
{
    public function homeAdmin()
	{
		$publisheds = Film ::where('status','1')->count();
		$unreleaseds = Film::where('status','0')->count();
		$members = User ::where('level',1)->count();

		$screenings = Screening::paginate(10);	
		for ($i=0; $i < count($screenings) ; $i++) { 
			$tickets = Ticket::where([['screening_id',$screenings[$i]->id],['user_id','<>','NULL']])->count();
			$screenings[$i]['cinema_id']= $tickets;
		}
		//print($lichchieu);
		return view('admin.home',compact('publisheds','unreleaseds','members','screenings'));
	}
	public function manageFilm()
	{
		$films = Film::orderby('id','desc')->paginate(10);
		return view('admin.manage.film',compact('films'));
	}

	public function getFilmList(Request $req) {
		$films = Film::where('name', 'LIKE' ,'%'.$req->keyword.'%')
		->orWhere('global_name', 'LIKE' ,'%'.$req->keyword.'%')
        ->get();
        return view('admin.manage.film', compact('films'));
	}
	public function manageCinema()
	{
		$cinemas = Cinema::paginate(10);
		return view('admin.manage.cinema',compact('cinemas'));
	}


	public function manageScreening()
	{
		$films = Film::where('status',1)->get();
		return view('admin.manage.screenings',compact('films'));
	}
	public function getScreeningList(){
		$screenings = Screening::paginate(10);
		
		return view('admin.screening.screening-list',compact('screenings'));
	}

	public function manageRoom()
	{	
		$rooms = Room::paginate(5);
		$cinemas = Cinema::all();
		return view('admin.manage.room',compact('rooms','cinemas'));
	}
	public function manageSeat()
	{	
		$rooms = Room::all();
		return view('admin.manage.seat',compact('rooms'));
	}

	public function manageUser()
	{	$users = User::where('level','<>','0')->paginate(10);
		return view('admin.manage.user',compact('users'));
	}
	public function manageTicket()
	{
		$tickets = Ticket::select('user_id')
		->where('user_id','<>','NULL')
		->groupBy('user_id')
		->distinct()
		->paginate(10);
		for ($i=0; $i < count($tickets) ; $i++) { 
			$p = Ticket::select('screening_id')->where('user_id','<>','NULL')->groupBy('screening_id')->distinct()->get();
			for ($j=0; $j < count($p); $j++) { 
				$g = Ticket::select('seat_id')
				->where([['user_id',$tickets[$i]->user_id],['screening_id',$p[$j]->screening_id]])
				->get();
				$p[$j]['seat_id']=$g;
			}
			$tickets[$i]['screening_id']=$p;
		}
		return view('admin.manage.ticket',compact('tickets'));
	}

	public function addFilmPage()
	{
		return view('admin.film.addfilm');
	}
	public function addFilm(Request $request)
	{

		dd($request->room);
		$films = new Film();
		$films->name = $request->name;
		$films->global_name = $request->global_name;
		if ($request->hasFile('image')) {
            $image = $request->file('image');
            $path = $image->store('images', 'public');
            $films->image = $path;
        }

		$films->producer = $request->producer;
		$films->categories = $request->categories;
		$films->director = $request->director;
		$films->case = $request->case;
		$films->durations = $request->durations;
		$films->release_date = $request->release_date;
		$films->status = $request->status;
		
		$films->trailer=$request->trailer;
		$films->description = $request->description;
		$films->ticket_price = $request->ticket_price;
			$films->save();
		return redirect('admin/managefilm');

	}
	public function editFilmPage($id)
	{
		$films = Film::where('id',$id)->get();
		return view('admin.film.editfilm',compact('films'));
	}
	public function validationFilm(Request $request,$id)
	{
		$films = Film::where('id',$id)->update([
			'name'=>$request->name,
			'global_name'=>$request->global_name,
			'image'=>$request->image,
			'producer'=>$request->producer,
			'categories'=>$request->categories,
			'director'=>$request->director,
			'case'=>$request->case,
			'durations'=>$request->durations,
			'release_date'=>$request->release_date,
			'status'=>$request->status,
			'trailer'=>$request->trailer,
			'description'=>$request->description,
			'ticket_price'=>$request->ticket_price
		]);
		return redirect()->back()->with('message','Chỉnh Sửa Thành Công!');
	}
	public function deleteFilm($id)
	{
		Film::where('id',$id)->delete();
		return redirect()->route('admin.managefilm');
	}
	public function addCinemaPage()
	{
		return view('admin.cinema.addcinema');
	}
	public function addCinema(Request $request)
	{
		$cinemas = new Cinema();
		$cinemas->cinema_name = $request->cinema_name;
		$cinemas->infomation = $request->infomation;
		$cinemas->save();

		return redirect()->route('admin.managecinema');
	}
	public function deleteCinema($id)
	{
		Cinema::where('id',$id)->delete();
		return redirect()->route('admin.managecinema');
	}

	public function addScreeningPage()
	{
		$films = Film::where('status','1')->get();
		$cinemas = Cinema::all();
		$rooms = Room::all();
		return view('admin.screening.addscreening',compact('films','cinemas','rooms'));
	}
	public function addScreening(Request $request)
	{
		$screenings= new Screening();
		$screenings->film_id = $request->film_id;
		$screenings->cinema_id = $request->cinema_id;
		$screenings->room_id = $request->room_id;
		$screenings->date = $request->date;
		$screenings->start_time = $request->start_time;
		$screenings->save();
		return;
	}

	public function editScreeningPage($id)
	{
		$screenings = Screening::where('id',$id)->get();
		return view('admin.screening.editscreening',compact('screenings'));
	}

	public function editScreening(Request $request,$id)
	{
		$screenings = Screening::findOrFail($id);
		$screenings->date = $request->date;
		$screenings->start_time = $request->start_time;
		$screenings->save();
		return redirect()->route('admin.managescreening');
	}
	public function deleteScreeningPage($id)
	{
		Screening::where('id',$id)->delete();
		return redirect()->route('admin.managescreening');
	}
	public function addRoomPage()
	{
		$cinemas = Cinema::all();
		return view('admin.room.addroom', compact('cinemas'));
	}
	public function addRoom(Request $request)
	{
		$rooms = new Room();
		$rooms->room_name = $request->room_name;
		$rooms->cinema_id = $request->cinema_id;
		$rooms->save();
		return redirect()->route('admin.manageroom');
	}
	public function deleteRoom($id)
	{
		Room::where('id',$id)->delete();
		return redirect()->route('admin.manageroom');
	}

	public function getRoom($id)
	{
		$rooms = Room::where('id_rap',$id)->get();
		foreach ($rooms as $room) {
			echo "<option value='".$room->id."'>".$room->room_name."</option>";
		}
	}
	public function getScreening($id)
	{
		$screenings = Screening::where('film_id',$id)->get();
		foreach ($screenings as $screening) {
			echo "<tr>
			<td>".$screening->id."</td>
			<td>".$screening->film->name."</td>
			<td>".$screening->cinema->cinema_name."</td>
			<td>".date('d-m-Y',strtotime($screening->date))."</td>
			<td>".date('H:i',strtotime($screening->start_time))."</td>
			<td><a href='admin/sualichchieu/".$screening->id."'><button style='background-color: #ffffff00;border: none' title=\"Sửa\"><i class=\"fas fa-edit text-success\"></i></button></a><br>
			<form action='admin/xoalich/".$screening->id."' method=\"get\" onsubmit=\"return confirm('Chắc chắn không ^_^')\">
			". '@csrf'."
			<button type=\"submit\" style=\"background-color: #ffffff00;border: none\" title=\"Xóa\"><i class=\"fas fa-trash-alt text-danger\"></i></button>
			</form></td>
			</tr>";
		}
	}
	public function showSeat($id)
	{
		$seats = Seat::where('room_id',$id)->limit(10)->get();
		return view('admin.seat.seatlist',compact('seats'));
	}
}
