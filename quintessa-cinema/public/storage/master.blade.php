<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>@yield('title')</title>
	<base href="{{asset('')}}">
	<link rel="shortcut icon" type="image/png" href="public/anhda4/logo/logo.png"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="public/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="public/fontawesome/css/all.css">
	<link rel="stylesheet" href="public/css/style.css">
	<script src="public/js/jquery-3.3.1.min.js"></script>
</head>
<body>
	@include('navigation')
	@section('content')

	@show
	@include('footer')
</body>
</html>