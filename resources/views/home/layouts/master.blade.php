<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Wine Center</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    {{--<link rel="stylesheet" href="{{asset('css/styles.css')}}">--}}

    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/slick.css')}}">
    <link rel="stylesheet" href="{{asset('css/slick-theme.css')}}">

    <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{asset('css/styles.css')}}">

</head>
<body>
    @include('home.layouts.header')
    {{--@include('layouts.menu')--}}
    @yield('Content')
    @include('home.layouts.footer')
    <script src="{{asset('js/jquery.min.js')}}" type="text/javascript" charset="utf-8"></script>
    <script src="{{asset('js/bootstrap.min.js')}}" type="text/javascript" charset="utf-8"></script>
    <script src="{{asset('js/slick.js')}}" type="text/javascript" charset="utf-8"></script>
    <script src="{{asset('js/slick-custom.js')}}" type="text/javascript" charset="utf-8"></script>
</body>

</html>
