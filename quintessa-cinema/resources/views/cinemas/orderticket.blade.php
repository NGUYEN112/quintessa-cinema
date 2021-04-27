@extends('layouts.cinema-layout')
@section('content')
@php
$idscreening=null;
foreach ($screenings as $screening)
$idscreening=$screening->id

@endphp
<div class="container">
    <div class="row">
        <div class="col-sm-9" style="background-color: #f26b38 ;margin-top: 20px; position: relative; height:fit-content">
            <div class="booking">
                <table class="table mt-3">
                    <thead class="thead-dark">
                        <tr>
                            <th style="width: 50%">Vé</th>
                            <th style="width: 15%">Số lượng</th>
                            <th style="width: 15%">Giá(VNĐ)</th>
                            <th style="width: 20%">Tổng(VNĐ)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color: #f9f9f9">
                            <td>
                                @foreach ($screenings as $screening)
                                <span>{{$screening->film->name}}</span>
                                @endforeach

                            </td>
                            <td>
                                <div>
                                    <input class="ticket_count" type="number" id="Numseats" style="width: 50px;" value="0" min="0" onchange="ticketPrice()">
                                </div>
                            </td>
                            @foreach ($screenings as $screening)
                            <td id="ticket_price">{{$screening->film->ticket_price}}</td>
                            @endforeach
                            <td><span class="total_price"></span>&nbsp;vnđ</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="seatbooking" style="background-color: #fff;height: auto">



                <div class="seatStructure" style=" width:100%">

                    <div class="screen ">SCREEN</div>
                    <div class="seatcolor">
                        <span class="seat-gray">Ghế đã bán</span>
                        <span class="seat-blue">Có thể chọn</span>
                        <span class="seat-green">Ghế đang chọn</span>
                    </div>
                    <div class="seatBooking">

                        @foreach ($seats as $seat)
                        <div class="seatRow">


                            <div class="seatRowName">
                                {{$seat->row}}
                            </div>

                            @foreach ($seat['number'] as $seat_number)

                            @if(isset($seat_number->ticket->screening_id) && $seat_number->ticket->screening_id == $idscreening && isset($seat_number->ticket->user_id))
                            <div id="{{$seat_number->id}}" class="seatNumber seatDisable" value="{{$seat_number->row}}{{$seat_number->number}}"><a class="btn btn-outline-primary">{{$seat_number->number}}</a></div>
                            @else
                            <div id="{{$seat_number->id}}" class="seatNumber" value="{{$seat_number->row}}{{$seat_number->number}}"><a class="btn btn-outline-primary">{{$seat_number->number}}</a></div>
                            @endif

                            @endforeach

                        </div>
                        @endforeach
                        <div class="seatReceipt">
                            <button class="btnClear">Clear</button>
                        </div>
                    </div>

                </div>

                <br /><br />
            </div>
            <button class="tt btn btn-primary" data-target="#continueModal" style="float: right;border: 1px solid;padding: 10px 15px">Tiếp Tục</button>
        </div>
        <div class="col-sm-3" style="margin-top: 20px">
            <div style="background-color: #f9f9f9">
                @foreach ($screenings as $screening)
                <input type="hidden" class="screening_id" value="{{$screening->id}}">
                @if (Auth::check())
                <input type="hidden" class="user_id" value="{{Auth::user()->id}}">
                @endif
                <div class="col-md-12" style="text-align: center; margin-bottom: 15px">
                    <img src="{{asset('/storage/' .$screening->film->image)}}" width="215" height="285">
                </div>
                <div class="col-md-12">
                    <div>
                        <h4 style="font-size: 18px" id="tenphim">{{$screening->film->name}}</h4>
                        <h4 style="font-size: 14px" id="tentienganh">{{$screening->film->global_name}}</h4>
                    </div>
                    <div>
                        <p><b>Rạp:</b>&nbsp;<span id="tenrap">{{$screening->cinema->cinema_name}}</span></p>
                        <p><b>Phòng:</b>&nbsp;<span id="tenphong">{{$screening->room->room_name}}</span></p>
                        <p><b>Suất chiếu:</b>&nbsp;<span id="ngay">{{date('d-m-Y', strtotime($screening->date))}}</span>&nbsp;|&nbsp;<span id="thoigian">{{date('G:i',strtotime($screening->start_time))}}</span></p>
                        @endforeach
                    </div>
                    <div><b>Ghế: </b> &nbsp;<div class="seatList"></div>
                    </div>
                </div>
                <div style="padding: 10px 15px 0px 15px ;">
                    <p><b>Tổng:</b><span id="total"> </span>&nbsp;VNĐ</p>
                </div>
                <div>
                    @if (!Auth::check())
                    <a href="{{route('cinema.loginpage')}}" class="text-danger">Đăng nhập để tiếp tục</a>
                    @else
                    <center>
                        <button id="addve" class="order-ticket btn btn-danger" >Đặt vé</button>
                        @csrf
                    </center>
                    @endif

                </div>
            </div>
        </div>
    </div>
</div>
</div>


<!-- <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body-failed">
                Vui lòng chọn đủ số lượng vé!
            </div>
            <div class="modal-body-success">
                Đặt vé thành công
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div> -->

<script type="text/javascript">
    $(document).ready(function() {
        $(".seatNumber").click(function() {
            var selectedSeats = parseInt($(".seatSelected").length);
            if (selectedSeats == $("#Numseats").val()) {
                if ($(this).hasClass("seatSelected")) {
                    var thisName = $(this).attr('value');
                    $(this).removeClass("seatSelected");
                    $(".seatList." + thisName).remove();
                }
            } else {
                if (!$(this).hasClass("seatDisable")) {
                    if ($(this).hasClass("seatSelected")) {
                        var thisName = $(this).attr('value');
                        $(this).removeClass("seatSelected");
                        $(".seatList." + thisName).remove();
                    } else {
                        $(this).addClass("seatSelected");
                        var thisName = $(this).attr('value');
                        $(".seatList").append('<span class=' + thisName + '>' + thisName + "&nbsp;," + '</span>');
                    }
                }
            }
        });


        $(".btnClear").click(function() {
            $(".seatSelected").removeClass("seatSelected");
            $(".seatList span").remove();
        });

        $(".tt").click(function() {
            if ($("#Numseats").val() == 0) {
                alert('Vui lòng chọn số lượng vé');
            } else {
                $('.booking').addClass('tieptuc');
                $('.seatbooking').addClass('showseat');
            }
        });
        
                  
                
        var allseat = [];
        $(".order-ticket").click(function() {
            var selectedSeats = parseInt($(".seatSelected").length);
            if ($("#Numseats").val() == selectedSeats) {
                $(".seatSelected").each(function() {
                    allseat.push($(this).attr('id'));
                });
                var url = `/ajaxorderticket`;
                var screening_id = $('.screening_id').val();
                var user_id = $('.user_id').val();
                $.ajax({
                    url: url,
                    type: 'POST',
                    data: {
                        _token : $('[name="_token"]').val(),
                        screeningid: screening_id,
                        userid: user_id,
                        allseats: allseat,
                        price: ticket_price,
                        totalprice: tongtv,
                    },
                    success: function(response) {
                        alert("đặt vé thành công");
                    }
                })
            } else {
                alert('Vui lòng chọn đủ số lượng vé')
            }
        });
    });
    
    var ticket_price = document.getElementById('ticket_price').innerHTML;
    var ticket_count = document.getElementsByClassName('ticket_count');
    var total_price = document.getElementsByClassName('total_price');
    var prices = [65000, 80000, 150000];
    var units = document.getElementsByClassName('units-class');
    var subs = document.getElementsByClassName('subtotal-class');
    var grand = document.getElementById('total');
    ticketPrice();
    var tongtv = ticketPrice();

    function ticketPrice() {
        for (i = 0; i < total_price.length; i++) {
            total_prc = ticket_count[i].value * ticket_price;
            total_price[i].innerHTML = total_prc;
        }
        grand.innerHTML = total_prc;
    }
</script>
@endsection