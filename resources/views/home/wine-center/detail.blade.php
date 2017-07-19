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
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
@endsection