@extends('layouts.cinema-layout')

@section('content')
<!-- <div id="demo" class="carousel slide" data-ride="carousel">
	<ul class="carousel-indicators">
		<li data-target="#demo" data-slide-to="0" class="active"></li>
		<li data-target="#demo" data-slide-to="1"></li>
		<li data-target="#demo" data-slide-to="2"></li>
	</ul>
	<div class="carousel-inner">
		<?php $i=0 ?>
		<a class="carousel-control-prev" href="#demo" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</a>
		<a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
</div> -->
<div class="container mt-4">
	<a href="#" class="pdc-hover" style="text-decoration: none;color: black"><h4 class="published">Phim Đang chiếu</h4></a>
	<div class="row">
		@foreach ($publisheds as $published)
		<div class="col-sm-3 col-md-3 col-xs-6">
			<div class="moviedangchieu">
				<img src="{{asset('/storage/images/' .$published->image)}}" width="100%" height="350px">
				<a href="{{route('cinema.filmDetail',$published->id)}}">
					<div class="decription-hover overlay">
						<div class="decription-content">
							<button class="btn btn-outline-danger">MUA VÉ</button>
						</div>
					</div>
				</a>
			</div>
			<div class="title-film mt-2">
				<h6 class="text-uppercase mb-0">{{$published->name}}</h6>
				<h6 class="text-uppercase en">{{$published->global_name}}</h6>
			</div>
		</div>
		@endforeach
	</div>
</div>

<div class="container mt-3">
	<a href="#" class="pdc-hover" style="text-decoration: none;color: black">
	<h4 class="unreleased">Phim Sắp Chiếu</h4></a>
	<div class="row">
		@foreach ($unreleaseds as $unreleased)
		<div class="col-md-3">
			<div class="moviedangchieu">
				<img src="{{asset('/storage/images/' .$unreleased->image)}}" width="100%" height="350px">
				<a href="{{route('cinema.filmDetail',$unreleased->id)}}">
					<div class="decription-hover overlay">
						<div class="decription-content">
							<button class="btn btn-outline-danger">MUA VÉ</button>
						</div>
					</div>
				</a>
			</div>
			<div class="title-film mt-2">
				<h6 class="text-uppercase mb-0">{{$unreleased->name}}</h6>
				<h6 class="text-uppercase en">{{$unreleased->global_name}}</h6>
			</div>
		</div>
		@endforeach
	</div>
</div>
<div class="container mt-3">
	<div class="gioithieu">
		<h3 class="psc">GIỚI THIỆU</h3>
		<div>
			
		</div>
	</div>
</div>
@endsection