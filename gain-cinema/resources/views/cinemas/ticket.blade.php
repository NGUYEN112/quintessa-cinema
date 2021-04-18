@extends('layouts.admin-layout')

@section('home-view')
<div>
    <form action="" method="post">
        @csrf
        <label for="film_name">Phim : {{$screening->film->film_name}}</label> <br>
        <input type="text" name="film_name" id="film_name" value="{{$screening->film->film_name}}" hidden>

        <label for="date">Ngày chiếu: {{$screening->date}}</label> <br>
        <input type="text" name="date" id="date" value="{{$screening->date}}" hidden>

        <label for="start_time">Suất chiếu: {{$screening->start_time}}</label> <br>
        <input type="text" name="start_time" id="start_time" value="{{$screening->start_time}}" hidden>

        <label for="room_name">Phòng chiếu: {{$screening->room->room_name}}</label> <br>
        <input type="text" name="room_name" id="room_name" value="{{$screening->room->room_name}}" hidden>

        <label for="seat_number">Số ghế: </label> <br>

        <label for="member_name">Tên thành viên: </label> <br>

        <label for="ticket_price">Giá vé: </label>


 
  <ul>
      @foreach($seats as $key => $seat)
    <li>
      <label>
        <input type="checkbox" name="{{$seat->id}}" value="true">
        <div class="icon-box">
          <p>{{$seat->seat_number}}</p>
        </div>
      </label>
    </li>
    @endforeach
  </ul>
    <button type="submit">Xác nhận</button>
    </form>
</div>
@endsection