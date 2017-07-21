@extends('home.layouts.master_detail')
@section('Content')
    <main>
        <section class="slider-product">
            <h5>{{$labels[20]->name}} > {{$labels[17]->name}} > {{$about->name}}</h5>
        </section>
        <section class="main-product">
            <div class="container">
                <div class="col-md-12">
                    <div class="col-md-3">
                        <ul class="menu-product">
                            <li class="item1"><a>{{$labels[17]->name}}</a></li>
                            @if($menu_wine !=null)
                                @foreach($menu_wine as $item)
                                    @if($item->id==$active)
                                        <li class="item2 active">
                                            <a href="{{url('/')}}/{{$slug}}/{{$id}}-{{$item->id}}/{{$item->slug}}.html">{{$item->name}}</a>
                                        </li>
                                    @else
                                        <li class="item2">
                                            <a href="{{url('/')}}/{{$slug}}/{{$id}}-{{$item->id}}/{{$item->slug}}.html">{{$item->name}}</a>
                                        </li>
                                    @endif

                                @endforeach
                            @endif
                        </ul>
                        <img src="{{asset('images/home/product_list.jpg')}}" class="img-responsive" style="width: 100%">
                        <img src="{{asset('images/home/vector.png')}}" style="margin-top: 30px; width: 100%" class="img-responsive">
                    </div>
                    <div class="col-md-9 news-detail">
                        <div class="col-md-11 col-md-offset-1">
                            <h1>{{$about->name}}</h1>
                            <p>{!! $about->content !!}</p>
                            <div class="row" style="padding: 10px 20px">
                                <div class="fb-send" data-href="{{url('')}}/{{$id}}-{{$slug}}/{{Session::get('locale')}}-{{$id_sp}}-{{$slug_sp}}.html"></div>
                                <div class="fb-like" data-href="{{url('')}}/{{$id}}-{{$slug}}/{{Session::get('locale')}}-{{$id_sp}}-{{$slug_sp}}.html" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="false"></div>
                                <div class="fb-share-button" data-href="{{url('')}}/{{$id}}-{{$slug}}/{{Session::get('locale')}}-{{$id_sp}}-{{$slug_sp}}.html" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse">Chia sẻ</a></div>
                            </div>
                            <div class="fb-comments" data-href="{{url('')}}/{{$id}}-{{$slug}}/{{Session::get('locale')}}-{{$id_sp}}-{{$slug_sp}}.html" data-numposts="5"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
@endsection