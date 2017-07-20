<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{$config->seo_title}}</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    {{--<link rel="stylesheet" href="{{asset('css/styles.css')}}">--}}
    <meta name="description" content="{{$config->seo_description}}"/>
    <meta name="author"  content="{{$config->seo_author}}"/>
    <meta name="keywords"  content="{{$config->seo_keyword}}"/>
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/slick.css')}}">
    <link rel="stylesheet" href="{{asset('css/slick-theme.css')}}">

    <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
    <link rel="stylesheet" href="{{asset('css/styles.css')}}">
    <script src="{{asset('js/jquery.min.js')}}" type="text/javascript" charset="utf-8"></script>
    <script src="{{asset('js/bootstrap.min.js')}}" type="text/javascript" charset="utf-8"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
    <script src="{{asset('js/slick.js')}}" type="text/javascript" charset="utf-8"></script>
    <script src="{{asset('js/slick-custom.js')}}" type="text/javascript" charset="utf-8"></script>
    <script src="{{asset('js/jquery.validate.js')}}"></script>
    {!! $config->google_analytic !!}
</head>
<body>
    @include('home.layouts.header')
    {{--@include('layouts.menu')--}}
    @yield('Content')
    @include('home.layouts.footer_detail')

</body>

</html>
