@extends('home.layouts.master_detail')
@section('Content')
    <main>
        <section class="slider-news">
            <h5>{{$labels[20]->name}} > {{$labels[26]->name}} >{{$news->menu_news_name}}</h5>
        </section>
        <section class="main-product">
            <div class="container">
                <div class="col-md-12">
                    <div class="col-md-3">
                        <ul class="menu-product">
                            <li class="item1"><a>{{$labels[23]->name}}</a></li>
                            @if($menu_news !=null)
                                @foreach($menu_news as $item)
                                    <li class="item2"><a href="{{url('')}}/{{$id}}-{{$slug}}/{{$item->id}}/{{$item->slug}}.html">{{$item->name}}</a></li>
                                @endforeach
                            @endif
                        </ul>
                        <img src="{{asset('images/home/news_list.jpg')}}" class="img-responsive" style="width: 100%">
                        <img src="{{asset('images/home/vector.png')}}" style="margin-top: 30px; width: 100%" class="img-responsive">
                    </div>
                    <div class="col-md-9 news-detail">
                        <div class="col-md-11 col-md-offset-1">
                            <h1>{{$news->news_name}}</h1>
                            <p>{!! $news->news_content !!}</p>

                            <div class="row" style="padding: 10px 20px">
                                <div class="fb-like" data-href="{{url('')}}/{{$id}}-{{$slug}}/{{$id_sp}}/{{$slug_sp}}.html" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="false"></div>
                                <div class="fb-share-button" data-href="{{url('')}}/{{$id}}-{{$slug}}/{{$id_sp}}/{{$slug_sp}}.html" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse">Chia sẻ</a></div>
                                <script src="https://apis.google.com/js/platform.js" async defer></script>

                                <!-- Place this tag where you want the share button to render. -->
                                <div class="g-plus" data-action="share" data-href="{{url('')}}/{{$id}}-{{$slug}}/{{$id_sp}}/{{$slug_sp}}.html"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @if(count($news_others) !=0)
        <section class="product products-other">
            <div class="container">
                <h3>{{$labels[25]->name}}</h3>
                <section class="regular-other">
                    <div class="slider">
                            @foreach($news_others as $item)
                                <div class="col-md-3">
                                    <div class="news-image">
                                        <img src="{{asset('images/news')}}/{{$item->avatar}}" >
                                    </div>
                                    <div class="product-text news-text">
                                        <h5>{{$item->news_name}}</h5>
                                        <a href="{{url('')}}/{{$id}}-{{$slug}}/{{Session::get('locale')}}-{{$item->id}}-{{$item->slug}}.html" class="btn">{{$labels[27]->name}}</a>
                                    </div>
                                </div>
                            @endforeach
                    </div>
                </section>
            </div>
        </section>
        @endif
    </main>
@endsection