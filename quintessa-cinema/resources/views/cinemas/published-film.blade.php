@extends('layouts.cinema-layout')
@section('content')
<div class="container">
	<h3 class="published mt-5" style="text-transform: uppercase;">Phim Đang Chiếu</h3>
	<div class="row">
		@foreach ($publisheds as $published)
		<div class="col-md-3 mt-4">
			<div class="moviedangchieu">
				<img src="{{asset('/storage/' .$published->image)}}" width="100%" height="350px">
				<a href="{{route('cinema.filmDetail',$published->id)}}">
					<div class="decription-hover overlay">
						<div class="decription-content">
							<button class="btn btn-outline-danger">MUA VÉ</button>
						</div>
					</div>
				</a>
			</div>
			<div class="tieudephimdc mt-2">
				<h5 class="text-uppercase ">{{$published->name}}</h5>
				<h6 class="text-uppercase ">{{$published->global_name}}</h6>
			</div>
		</div>
		@endforeach
	</div>
</div>
@endsection