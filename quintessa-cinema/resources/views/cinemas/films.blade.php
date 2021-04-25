@extends('layouts.cinema-layout')

@section('content')
<div class="container mt-5">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-8">
            <div class="row">
                <div class="col-xs-8 col-sm-4 col-md-4 image">
                    <img src="{{asset('/storage/' .$film->image)}}" alt="image" width="100%">
                </div>
                <div class="col-sx-12 col-sm-8 col-md-8">
                    <h2 class="text-uppercase title-movie">{{$film->name}}</h2>
                    <h3 class="text-uppercase title-movie en">{{$film->global_name}}</h3>
                    <div class="movie-info">
                        <div class="info">
                            <label>Thời lượng:&nbsp;</label>
                            <span>{{$film->durations}} phút</span>
                        </div>
                        <div class="info">
                            <label>Thể loại:&nbsp;</label>
                            <span>{{$film->categories}}</span>
                        </div>
                        <div class="info">
                            <label>Nhà sản xuất:&nbsp;</label>
                            <span>{{$film->producer}}</span>
                        </div>
                        <div class="info">
                            <label>Đạo diễn:&nbsp;</label>
                            <span>{{$film->director}}</span>
                        </div>
                        <div class="info">
                            <label>Diễn viên:&nbsp;</label>
                            <span>{{$film->case}}</span>
                        </div>
                        <div class="info">
                            <label>Ngày khởi chiếu:&nbsp;</label>
                            <span>{{date('d-m-Y', strtotime($film->release_date))}}</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row film-content">
                <div class="col-12">
                    <div class="content">
                        <h3>Nội Dung Phim</h3>
                        <div class="content-text">
                            <br>
                            <p>{{$film->description}}</p>
                        </div>
                        <div class="trailer">
                            {!!$film->trailer!!}
                        </div>
                    </div>
                </div>
            </div>
            <div class="row screening-title">
                <div class="col-12">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#home">Lịch Chiếu</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div id="home" class="container tab-pane active"><br>
                            @foreach ($screenings as $screening)
                            <div class="screening mb-4">
                                <div class="cinema-name">
                                    <h5>{{$screening->cinema->cinema_name}}</h5>
                                </div>
                                <div class="screening-detail">
                                    @foreach ($screening['date'] as $date)
                                    <span>
                                        <strong>{{date('d-m-Y', strtotime($date->date))}}</strong>
                                    </span>
                                    <ul>
                                        @foreach ($date['room_id'] as $move)
                                        <div class="mb-4">
                                            <span class="screening-room">{{$move->room->room_name}}</span>

                                            @foreach ($move['time'] as $time)
                                            <a href="{{route('cinema.orderticket', $time->id)}}">
                                                <li>{{date('G:i',strtotime($time->start_time))}}</li>
                                            </a>
                                            @endforeach
                                        </div>
                                        @endforeach


                                    </ul>
                                    @endforeach
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4">
            <h3 class="relate-film">Phim Đang Chiếu</h3>
            <div class="row">
                @foreach($relate_films as $relate_film)
                <div class="col-12 ">
                    <div class="movie relate-move">
                        <img src="{{asset('/storage/' .$relate_film->image)}}" alt="image" width="100%">
                        <div class="decription-hover">
                            <a href=""><button class="btn btn-outline-secondary">Xem chi tiết</button></a>
                        </div>
                    </div>
                    <div class="title-plq">
                        <h4 class="text-uppercase">{{$relate_film->name}}</h4>
                        <h4 class="text-uppercase en">{{$relate_film->global_name}}</h4>
                    </div>
                </div>
                @endforeach
            </div>
            <button class="btn btn-outline-info mt-4 seen-more"> Xem Thêm</button>
        </div>
    </div>
</div>
@endsection