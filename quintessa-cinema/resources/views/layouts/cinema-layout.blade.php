<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quintessa Cinema</title>
    <link rel="stylesheet" href="{{asset('/storage/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('/storage/bootstrap/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('/storage/fontawesome/css/all.css')}}">
    <script src="{{asset('/storage/jquery-3.3.1.min.js')}}"></script>

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid nav-content">
            <a class="navbar-brand" href="#">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav mb-2 mb-lg-0 mx-auto ">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Phim
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="{{route('cinema.published')}}">Phim đang chiếu</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="{{route('cinema.unreleased')}}">Phim sắp chiếu</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">Thành viên</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">Giới thiệu</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Contact
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#"><i class="fab fa-facebook-f"></i> Facebook</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fab fa-youtube"></i> Youtube</a></li>
                            <li><a class="dropdown-item" href="#"><i class="fab fa-tiktok"></i> TikTok</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="d-flex dropdown">
                @if (isset(Auth::user()->name))
                    <a class="dropdown-item" href="{{route('cinema.logout')}}"> Đăng xuất</a>
                @endif
                @if (empty(auth()->user()->name))
                <a href="{{route('cinema.loginpage')}}">Đăng nhập</a>
                <a>/</a>
                <a href="{{route('cinema.registerpage')}}">Đăng ký</a>
                @endif

            </div>
        </div>
    </nav>
    @yield('content')


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <script src="https://kit.fontawesome.com/fd80de56a4.js" crossorigin="anonymous"></script>

</body>

</html>