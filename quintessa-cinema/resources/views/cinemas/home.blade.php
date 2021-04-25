@extends('layouts.cinema-layout')

@section('content')
<div class="mKeyVi">
  <div class="main_key_visual">
    <div class="office">
      <div class="officeTop">
        <h2>
          Phim Đang Chiếu
        </h2>
      </div>
      <div class="officeCont">
        <ol class="officeRk">
          <!-- <div class="blind">
            <h3>Đặt vé trước</h3>
          </div> -->
          @foreach($films as $key => $film)
          <li>
            <a href="{{route('cinema.filmDetail',$film->id)}}" class="tit">
              <em>{{$key+1}}.</em>
              <span class="grade_18"></span>
              <span class="mvTit">{{$film->name}}</span>
            </a>
            <span class="memRk">{{$film->durations}} phút | {{date('d-m-Y', strtotime($film->release_date))}}
            </span>
          </li>
          @endforeach
        </ol>
      </div>
      <a href="{{route('cinema.published')}}" class="Lang-LBL0016 btn_Ticketing">Mua vé ngay</a>
    </div>
    <div class="trailer slide-content">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="https://media.lottecinemavn.com/Media/MovieFile//MovieImg/202104/10721_105_100001.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="https://media.lottecinemavn.com/Media/MovieFile//MovieImg/202104/10726_105_100003.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="https://www.bhdstar.vn/wp-content/uploads/2021/04/1920x1080.jpg" alt="Third slide">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
  </div>
</div>
@endsection