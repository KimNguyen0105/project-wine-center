@extends('home.layouts.master_detail')
@section('Content')

    <style>
        a{
            color: red;
        }
    </style>
    <main>
        <section class="slider-product">
            <h5>{{$labels[21]->name}} > {{$labels[23]->name}} > {{$product->collection_name}} - {{$product->product_name}}</h5>
        </section>
        <section class="main-product">
            <div class="container">
            <div class="col-md-12">
                <div class="col-md-3 col-sm-3">
                    <ul class="menu-product">
                        <li class="item1"><a>{{$labels[23]->name}}</a></li>
                        @if($menu_product !=null)
                            @foreach($menu_product as $item)
                                <li class="item2"><a href="{{url('')}}/{{$id}}-{{$slug}}/{{$item->id}}/{{$item->slug}}.html">{{$item->name}}</a></li>
                            @endforeach
                        @endif
                    </ul>
                    <img src="{{asset('images/home/product_list.jpg')}}" class="img-responsive" style="width: 100%">
                    <img src="{{asset('images/home/vector.png')}}" style="margin-top: 30px;width: 100%" class="img-responsive">
                </div>
                <div class="col-md-9 col-sm-9 product-detail">
                    <div class="col-md-12 col-md-offset-1">
                        <div class="col-md-12 row">
                            <h1>{{$product->collection_name}} - {{$product->product_name}}</h1>
                        </div>
                        <div class="div-detail">
                            <div class="col-md-6 col-sm-6 product-content">
                                <p>{!! $product->product_content !!}</p>
                                <div class="row" style="text-align: center; padding: 10px 20px">
                                    <div class="fb-send" data-href="{{url('')}}/{{$id}}-{{$slug}}/{{Session::get('locale')}}-{{$id_sp}}-{{$slug_sp}}.html"></div>
                                    <div class="fb-like" data-href="{{url('')}}/{{$id}}-{{$slug}}/{{Session::get('locale')}}-{{$id_sp}}-{{$slug_sp}}.html" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="false"></div>

                                    <div class="fb-share-button" data-href="{{url('')}}/{{$id}}-{{$slug}}/{{Session::get('locale')}}-{{$id_sp}}-{{$slug_sp}}.html" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse">Chia sẻ</a></div>


                                </div>
                                <a class="btn" onclick="ftGetSubscribeWine('{{$product->id}}')">{{$labels[12]->name}}</a>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <img id="imageDetail" src="{{asset('images/products')}}/{{$product->avatar}}" class="img-responsive img-detail">
                                <div class="thumb-product-detail">
                                    <section class="product-image">
                                        <div class="slider">
                                            <div class="col-md-4 col-sm-4 col-xs-6">
                                                <div class="thumbnail active">
                                                    <img src="{{asset('images/products')}}/{{$product->avatar}}" class="img-responsive img-thumb">
                                                </div>
                                            </div>
                                            @if($product_images !=null)
                                                @foreach($product_images as $item)
                                                    <div class="col-md-4 col-sm-4 col-xs-6">
                                                        <div class="thumbnail">
                                                            <img src="{{asset('images/products')}}/{{$item->link}}" class="img-responsive img-thumb">
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
                </div>
            </div>
            </div>
        </section>
        @if(count($product_others) !=0)
        <section class="product products-other">
            <div class="container">
                <h3>{{$labels[25]->name}}</h3>
                <section class="regular-other">
                    <div class="slider">
                            @foreach($product_others as $item)
                                <div class="col-md-3">
                                    <div class="product-image">
                                        <img src="{{asset('images/products')}}/{{$item->avatar}}" >
                                    </div>
                                    <div class="product-text">
                                        <h5>{{$item->brand_name}}</h5>
                                        <a class="title" href="{{url('')}}/{{$id}}-{{$slug}}/{{Session::get('locale')}}-{{$item->id}}-{{$item->slug}}.html" title="{{$item->product_name}}">{{$item->collection_name}} - {{$item->product_name}}</a>
                                        {{--<h4>{{$item->price}} VND</h4>--}}
                                        <a class="btn" onclick="ftGetSubscribeWine('{{$item->id}}')">{{$labels[12]->name}}</a>
                                    </div>
                                </div>
                            @endforeach

                    </div>
                </section>
            </div>
        </section>
        @endif
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
    </main>


    <script>
        $('.img-thumb').on('click',function () {
            $('.thumb-product-detail .thumbnail').removeClass('active');
            $(this).parent('.thumbnail').addClass('active');
            var src=$(this).attr('src');
            $('#imageDetail').attr('src',src);
        });
    </script>

@endsection