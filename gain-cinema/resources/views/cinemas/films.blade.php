@extends('layouts.admin-layout')

@section('home-view')
    @foreach($films as $key => $film)
        <div>
            <h3>{{$film->film_name}}</h3>
            <p>{{$film->description}}</p>
            <p>{{$film->durations}}</p>
        </div>
        <div>
            <p>{{$film->avatar}}</p>
        </div>
        <div>
            <a href="{{route('cinema.screening' ,$film->id)}}">Mua vé</a>
        </div>
    @endforeach
@endsection