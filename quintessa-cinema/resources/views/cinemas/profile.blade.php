@extends('layouts.cinema-layout')

@section('content')
<div class="container user-profile">
    <article class="avatar-img">
        <div class="avatar-form">
            <img src="" alt="" width="200" height="320">
            <div class="change-avatar">
                <form action="" method="post">
                    @csrf
                    <label for="avatar"><i class="fas fa-camera"></i></label>
                    <input type="file" name="avatar" class="form-control-file" hidden id="avatar">
                    <button type="submit">Change avatar</button>
                </form>
            </div>
        </div>
    </article>
    <aside class="user-info">
        <p>Name : {{auth()->user()->name}}</p>
        <p>Email : {{auth()->user()->email}}</p>
        <p>Address : </p>
        <p>Phone number: </p>
    </aside>
</div>
@endsection