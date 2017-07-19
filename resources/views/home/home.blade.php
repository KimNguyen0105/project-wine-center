@extends('home.layouts.master')
@section('Content')
    <main class="home">
        <section class="slider">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    @if($sliders !=null)
                        @for($i=0; $i<count($sliders);$i++)
                            @if($i==0)
                                <li data-target="#myCarousel" data-slide-to="{{$i}}" class="active"></li>
                            @else
                                <li data-target="#myCarousel" data-slide-to="{{$i}}"></li>
                            @endif
                        @endfor
                    @endif
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    @if($sliders !=null)
                        @for($i=0; $i<count($sliders);$i++)
                            @if($i==0)
                                <div class="item active">
                                    <img src="{{asset('images/slider')}}/{{$sliders[$i]->link}}" class="images-responsive" alt="">
                                </div>
                            @else
                                <div class="item">
                                    <img src="{{asset('images/slider')}}/{{$sliders[$i]->link}}" class="images-responsive" alt="">
                                </div>
                            @endif
                        @endfor
                    @endif
                </div>
                <!-- Left and right controls -->
            </div>
            <div class="baner-grids">
                <section class="banner-header">
                    <div class="slider">
                        @if($collections!=null)
                            @foreach($collections as $item)
                                <div class="col-md-4">
                                    <figure class="effect-bubba">
                                        <img src="{{asset('images/collection')}}/{{$item->avatar}}" class="images-responsive" alt="">
                                        <figcaption>
                                            <h2>{{$item->name}}</h2>
                                            <a href="{{url('')}}/{{$menu_product->id}}-{{$menu_product->slug}}/{{$item->id}}/{{$item->slug}}.html" class="btn">{{$labels[3]->name}}</a>
                                        </figcaption>
                                    </figure>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </section>
            </div>
        </section>
        <section class="product">
            <div class="container">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_popular" data-toggle="tab" aria-expanded="true">{{$labels[4]->name}}</a></li>
                        <li ><a href="#tab_new" data-toggle="tab" aria-expanded="true">{{$labels[5]->name}}</a></li>
                        <li ><a href="#tab_sell" data-toggle="tab" aria-expanded="true">{{$labels[6]->name}}</a></li>
                        <li ><a href="#tab_special" data-toggle="tab" aria-expanded="true">{{$labels[7]->name}}</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_popular">
                            <section class="regular">
                                <div class="slider">
                                    @if($product_1 !=null)
                                        @foreach($product_1 as $item)
                                            <div class="col-md-3">
                                                <div class="product-image">
                                                    <img src="{{asset('images/products')}}/{{$item->avatar}}" >
                                                </div>
                                                <div class="product-text">
                                                    <h5>{{$item->brand_name}}</h5>
                                                    <a class="title" href="{{url('')}}/{{$menu_product->id}}-{{$menu_product->slug}}/{{Session::get('locale')}}-{{$item->id}}-{{$item->slug}}.html" title="{{$item->product_name}}">{{$item->collection_name}} - {{$item->product_name}}</a>
                                                    {{--<a class="title" href="{{url('')}}/{{Session::get('locale')}}{{$item->id}}-{{$item->slug}}.html" title="{{$item->product_name}}">{{$item->collection_name}} - {{$item->product_name}}</a>--}}
                                                    {{--<h4>{{$item->price}} VND</h4>--}}
                                                    <a class="btn" onclick="ftGetSubscribeWine('{{$item->id}}')">{{$labels[12]->name}}</a>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                            </section>
                        </div>
                        <div class="tab-pane" id="tab_new">
                            <section class="regular1">
                                <div class="slider">
                                    @if($product_2 !=null)
                                        @foreach($product_2 as $item)
                                            <div class="col-md-3">
                                                <div class="product-image">
                                                    <img src="{{asset('images/products')}}/{{$item->avatar}}" >
                                                </div>
                                                <div class="product-text">
                                                    <h5>{{$item->brand_name}}</h5>
                                                    <a class="title" href="{{url('')}}/{{$menu_product->id}}-{{$menu_product->slug}}/{{Session::get('locale')}}-{{$item->id}}-{{$item->slug}}.html" title="{{$item->product_name}}">{{$item->collection_name}} - {{$item->product_name}}</a>
                                                    {{--<h4>{{$item->price}} VND</h4>--}}
                                                    <a class="btn" onclick="ftGetSubscribeWine('{{$item->id}}')">{{$labels[12]->name}}</a>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                            </section>

                        </div>
                        <div class="tab-pane" id="tab_sell">
                            <section class="regular2 ">
                                <div class="slider">
                                    @if($product_3 !=null)
                                        @foreach($product_3 as $item)
                                            <div class="col-md-3">
                                                <div class="product-image">
                                                    <img src="{{asset('images/products')}}/{{$item->avatar}}" >
                                                </div>
                                                <div class="product-text">
                                                    <h5>{{$item->brand_name}}</h5>
                                                    <a class="title" href="{{url('')}}/{{$menu_product->id}}-{{$menu_product->slug}}/{{Session::get('locale')}}-{{$item->id}}-{{$item->slug}}.html" title="{{$item->product_name}}">{{$item->collection_name}} - {{$item->product_name}}</a>
                                                    {{--<h4>{{$item->price}} VND</h4>--}}
                                                    <a class="btn" onclick="ftGetSubscribeWine('{{$item->id}}')">{{$labels[12]->name}}</a>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                            </section>
                        </div>
                        <div class="tab-pane" id="tab_special">
                            <section class="regular3 ">
                                <div class="slider">
                                    @if($product_4 !=null)
                                        @foreach($product_4 as $item)
                                            <div class="col-md-3">
                                                <div class="product-image">
                                                    <img src="{{asset('images/products')}}/{{$item->avatar}}" >
                                                </div>
                                                <div class="product-text">
                                                    <h5>{{$item->brand_name}}</h5>
                                                    <a class="title" href="{{url('')}}/{{$menu_product->id}}-{{$menu_product->slug}}/{{Session::get('locale')}}-{{$item->id}}-{{$item->slug}}.html" title="{{$item->product_name}}">{{$item->collection_name}} - {{$item->product_name}}</a>
                                                    {{--<h4>{{$item->price}} VND</h4>--}}
                                                    <a class="btn" onclick="ftGetSubscribeWine('{{$item->id}}')">{{$labels[12]->name}}</a>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="contatc-main">
            <p class="p-phone" style="margin-bottom: 30px">{{$labels[13]->name}}</p>
            @if($address !=null)
                @foreach($address as $item)
                    <h5>{{$item->name}}: {!! $item->content !!}</h5>
                @endforeach
            @endif
            <div class="phone">
                @if($address !=null)
                    @foreach($address as $item)
                        <p class="p-phone">{{$item->name}}: {{$item->phone}}</p>
                    @endforeach
                @endif
            </div>
        </section>
        <section class="subscribe">
            <p>{{$labels[14]->name}}</p>
            <h5>{{$labels[15]->name}}</h5>
            <form action="{{url('subscribe')}}" method="post">
                <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
                <input type="email" required name="email"  placeholder="{{$labels[16]->name}}">
                <input type="submit" value="{{$labels[14]->name}}">
            </form>
        </section>
        <section class="news">
            <div class="row baner-grids">
                @if(count($news)!=0)
                    @foreach($news as $item)
                        <div class="col-md-6 col-sm-6">
                            <figure class="effect-bubba">
                                <img src="{{asset('images/news')}}/{{$item->avatar}}" class="images-responsive" alt="">
                                <figcaption>
                                    <p>APRIL 11, 2017</p>
                                    <a href="{{url('')}}/{{$menu_news->id}}-{{$menu_news->slug}}/{{Session::get('locale')}}-{{$item->id}}-{{$item->slug}}.html">{{$item->news_name}}</a>
                                </figcaption>
                            </figure>
                        </div>
                    @endforeach
                @endif
            </div>
        </section>
        @if(Session::get('message'))
            @if(Session::get('message')==1)
                <script>
                    $(function() {
                        document.getElementById("txtMessage").innerHTML = "{{$labels[42]->name}}";
                        $('#modalConfirm').modal('show');
                    });
                </script>
            @else
                <script>
                    $(function() {
                        document.getElementById("txtMessage").innerHTML = "{{$labels[43]->name}}";
                        $('#modalConfirm').modal('show');
                    });
                </script>
            @endif
        @endif
        @if(Session::get('subscribe'))
            @if(Session::get('subscribe')==1)
                <script>
                    $(function() {
                        document.getElementById("txtMessage").innerHTML = "{{$labels[42]->name}}";
                        $('#modalConfirm').modal('show');
                    });
                </script>
            @else
                <script>
                    $(function() {
                        document.getElementById("txtMessage").innerHTML = "{{$labels[43]->name}}";
                        $('#modalConfirm').modal('show');
                    });
                </script>
            @endif
        @endif
    </main>
@endsection