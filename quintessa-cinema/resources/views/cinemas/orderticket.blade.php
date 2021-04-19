@extends('layouts.cinema-layout')
@section('content')
@php
$idscreening=null;
foreach ($screenings as $screening)
$idscreening=$screening->id

@endphp
<div class="container">
    <div class="row">
        <div class="col-sm-9" style="background-color: #f26b38;margin-top: 50px; position: relative;">
            <div>
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
                                <td id="ticket_price">50000</td>
                                <td><span class="total_price"></span>&nbsp;vnđ</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="seatbooking" style="background-color: #fff;height: 600px">

                    <div class="inputForm">
                    </div>


                    <div class="seatStructure" style="position:absolute;" >
                        <center>
                            <div class="screen">SCREEN</div>
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
                                    <div id="{{$seat_number->id}}" class="seatNumber seatDisable" value="{{$seat_number->row}}{{$seat_number->number}}"> <a href="">{{$seat_number->number}}</a></div>
                                    @endforeach
                                </div>
                                @endforeach
                                <div class="seatReceipt">
                                    <button class="btnClear">Clear</button>
                                </div>
                            </div>
                        </center>
                    </div>
                    <br /><br />
                </div>
                <button class="tt" style="float: right;margin-bottom: 10px;border: 1px solid;padding: 10px 15px">Tiếp Tục</button>
            </div>
        </div>
        <div class="col-sm-3" style="margin-top: 50px">
            <div style="background-color: #f9f9f9">
                @foreach ($screenings as $screening)
                <input type="hidden" class="screening_id" value="{{$screening->id}}">
                @if (Auth::check())
                <input type="hidden" class="user_id" value="{{Auth::user()->id}}">
                @endif
                <div class="col-md-12" style="text-align: center;">
                    <img src="{{asset('/storage/images/' .$screening->film->image)}}" width="215" height="150">
                </div>
                <div class="col-md-12">
                    <div>
                        <h4 style="font-size: 16px" id="tenphim">{{$screening->film->name}}</h4>
                        <h4 style="font-size: 14px" id="tentienganh">{{$screening->film->global_name}}</h4>
                    </div>
                    <div>
                        <p><b>Rạp:</b>&nbsp;<span id="tenrap">{{$screening->cinema->cinema_name}}</span></p>
                        <p><b>Phòng:</b>&nbsp;<span id="tenphong">{{$screening->room->room_name}}</span></p>
                        <p><b>Suất chiếu:</b>&nbsp;<span id="ngay">{{date('d-m-Y', strtotime($screening->date))}}</span>&nbsp;|&nbsp;<span id="thoigian">{{date('G:i',strtotime($screening->time))}}</span></p>
                        @endforeach
                        <div><b>Combo:</b>&nbsp;<div class="comboList"></div>
                        </div>
                        <div><b>Ghế:</b>&nbsp;<div class="seatList"></div>
                        </div>
                    </div>
                    <div>
                        <p><b>Tổng:</b><span id="total"> </span>&nbsp;VNĐ</p>
                    </div>
                    <div>
                        @if (!Auth::check())
                        <a href="{{route('cinema.loginpage')}}" class="text-danger">Đăng nhập để tiếp tục</a>
                        @else
                        <center>
                            <button id="addve" class="order-ticket">Đặt vé</button>
                        </center>
                        @endif

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $(".seatNumber").click(function() {
            var selectedSeats = parseInt($(".seatSelected").length);
            if (selectedSeats == $("#Numseats").val()) {
                if ($(this).hasClass("seatSelected")) {
                    var thisName = $(this).attr('value');
                    $(this).removeClass("seatSelected");
                    $(".seatList ." + thisName).remove();
                }
            } else {
                if (!$(this).hasClass("seatDisable")) {
                    if ($(this).hasClass("seatSelected")) {
                        var thisName = $(this).attr('value');
                        $(this).removeClass("seatSelected");
                        $(".seatList ." + thisName).remove();
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
        var combo = {
            id: null,
            sl: null
        };
        $(".order-ticket").click(function() {
            var selectedSeats = parseInt($(".seatSelected").length);
            if ($("#Numseats").val() == selectedSeats) {
                $(".seatSelected").each(function() {
                    allseat.push($(this).attr('id'));
                });
                var url = "http://localhost/quintessa-cinema/ajaxorderticket";
                var screening_id = $('.screening_id').val();
                var user_id = $('.user_id').val();

                $.get({
                    type: 'GET',
                    url: url,
                    data: {
                        screeningid: screening_id,
                        userid: user_id,
                        allseat: allseat
                    },
                    success: function(response) {
                        alert("đặt vé thành công");
                    }
                });
            } else {
                alert('Vui lòng chọn đủ số lượng vé');
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
    var tongtv = 0;

    function ticketPrice() {
        for (i = 0; i < total_price.length; i++) {
            total_prc = ticket_count[i].value * ticket_price;
            total_price[i].innerHTML = total_prc;
        }
        grand.innerHTML = total_prc;
    }
    calculate();

    function calculate() {
        let sum = 0;
        for (i = 0; i < subs.length; i++) {
            var subTotal = units[i].value * prices[i];
            subs[i].innerHTML = subTotal;
            sum += subTotal;
        }

        grand.innerHTML = sum + total_prc;
    }
</script>
@endsection