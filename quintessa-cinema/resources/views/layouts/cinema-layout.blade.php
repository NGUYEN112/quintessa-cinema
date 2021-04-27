<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quintessa Cinema</title>
    <link rel="stylesheet" href="{{asset('/storage/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('/storage/css/profile.css')}}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('/storage/fontawesome/css/all.css')}}">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet">

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light nav-background">
        <div class="container-fluid nav-content">
            <a class="navbar-brand" href="{{route('cinema.home')}}">
                <img src="{{asset('/storage/images/logo2.jpg')}}" alt="image">
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
                        <a class="nav-link" href="{{route('cinema.member')}}">Thành viên</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{route('cinema.about-us')}}">Giới thiệu</a>
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
                @if(Auth::user()->level == 1)

                <li class="nav-item dropdown ml-auto"><a id="userInfo" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><img src="{{asset('/storage/' .auth()->user()->avatar)}}" alt="" style="max-width: 2.5rem;" class="img-fluid rounded-circle shadow"></a>
                    <div aria-labelledby="userInfo" class="dropdown-menu" id="custom-dropdown">
                        <a href="#" class="dropdown-item">
                            <strong class="d-block text-uppercase headings-font-family">{{Auth::user()->name}}</strong>
                        </a>
                        <div class=" dropdown-divider">
                        </div><a href="{{route('cinema.profile')}}" class="dropdown-item">Profile</a>
                        <div class="dropdown-divider"></div><a href="{{route('cinema.logout')}}" class="dropdown-item">Đăng xuất</a>
                    </div>
                </li>
                @else
                <a class="dropdown-item" href="{{route('cinema.logout')}}"> Đăng xuất</a>
                @endif
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <script src="https://kit.fontawesome.com/fd80de56a4.js" crossorigin="anonymous"></script>

</body>

</html>