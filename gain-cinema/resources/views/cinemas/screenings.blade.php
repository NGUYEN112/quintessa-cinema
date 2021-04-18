@extends('layouts.admin-layout')

@section('home-view')
    <div>
        {{$film->film_name}}
    </div>
    <div>
        @foreach($screenings as $key => $screening)
            @if($screening->film_id == $film->id)
                <a href="{{route('cinema.ticket',$screening->id)}}">{{$screening->start_time}}</a>
            @endif
        @endforeach
    </div>
@endsection