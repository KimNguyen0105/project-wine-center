@extends('home.layouts.master_detail')
@section('Content')
    <main>
        <section class="slider-news">
            <h5>{{$labels[20]->name}} > {{$labels[26]->name}}</h5>
        </section>
        <section class="main-product">
            <div class="container">
                <div class="col-md-12">
                    <div class="col-md-3">
                        <ul class="menu-product">
                            <li class="item1"><a>{{$labels[23]->name}}</a></li>
                            @if($menu_news !=null)
                                @foreach($menu_news as $item)
                                    @if($item->id==$id)
                                        <li class="item2 active"><a href="{{url('')}}/{{$id}}-{{$slug}}/{{$item->id}}/{{$item->slug}}.html">{{$item->name}}</a></li>
                                    @else
                                        <li class="item2"><a href="{{url('')}}/{{$id}}-{{$slug}}/{{$item->id}}/{{$item->slug}}.html">{{$item->name}}</a></li>
                                    @endif
                                @endforeach
                            @endif
                        </ul>
                        <img src="{{asset('images/home/news_list.jpg')}}" class="img-responsive" style="width: 100%">
                        <img src="{{asset('images/home/vector.png')}}" style="margin-top: 30px; width: 100%" class="img-responsive">
                    </div>
                    <div class="col-md-9 product">
                        <div class="col-md-12 row">
                            @if($news !=null)
                                @foreach($news as $item)
                                    <div class="col-md-4 col-sm-6">
                                        <div class="news-image">
                                            <img src="{{asset('images/news')}}/{{$item->avatar}}" >
                                        </div>
                                        <div class="product-text news-text">
                                            <h5>{{$item->news_name}}</h5>
                                            <a href="{{url('')}}/{{$active_menu}}-{{$slug}}/{{Session::get('locale')}}-{{$item->id}}-{{$item->slug}}.html" class="btn">{{$labels[27]->name}}</a>
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        </div>
                        <div class="col-md-12 text-center" style="margin-top: 30px">
                            {{$news->links()}}
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
@endsection