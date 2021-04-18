@extends('layouts.login-layout')
@section('login-content')
<div class="limiter">
        <div class="container-login100 small-bg">
            <div class="wrap-login100 small-bg inside-form">

                <form class="login100-form validate-form" method="POST">
                    @csrf
                    <span class="login100-form-title title-login">
                        Đăng nhập
                    </span>
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <input class="input100" type="text" name="email" placeholder="Email" required>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100" type="password" name="password" placeholder="Mật khẩu" required>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="container-login100-form-btn">
                        <input class="login100-form-btn" type="submit" value="Đăng nhập">

                    </div>


                    <div class="text-center p-t-12">
                        <span class="txt1">
                            Quên
                        </span>
                        <a class="txt2" href="#">
                            Email / Mật khẩu?
                        </a>
                    </div>

                    <div class="text-center p-t-136">
                        <a class="txt2" href="{{route('cinema.registerpage')}}">
                            Tạo tài khoản
                            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection