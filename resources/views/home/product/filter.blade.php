@extends('home.layouts.master_detail')
@section('Content')
    <main>
        <section class="slider-product">
            <h5>{{$labels[20]->name}} > {{$labels[22]->name}}
            @if($title==1)
                > {{$labels[0]->name}}
                @elseif($title==2)
                > {{$labels[2]->name}}
                @else
                > {{$labels[1]->name}}
                @endif
               </h5>
        </section>
        <section class="main-product">
            <div class="container">
            <div class="col-md-12">
                <div class="col-md-3">
                    <ul class="menu-product">
                        <li class="item1"><a>{{$labels[23]->name}}</a></li>
                        @if($menu_product !=null)
                            @foreach($menu_product as $item)
                                @if($item->id==$id)
                                    <li class="item2 active">
                                        <a href="{{url('')}}/{{$active_menu}}-{{$slug}}/{{$item->id}}/{{$item->slug}}.html">{{$item->name}}
                                        </a>
                                    </li>
                                @else
                                    <li class="item2">
                                        <a href="{{url('')}}/{{$active_menu}}-{{$slug}}/{{$item->id}}/{{$item->slug}}.html">{{$item->name}}
                                        </a>
                                    </li>
                                @endif
                            @endforeach
                        @endif
                    </ul>
                    <img src="{{asset('images/home/product_list.jpg')}}" class="img-responsive" style="width: 100%">
                    <img src="{{asset('images/home/vector.png')}}" style="margin-top: 30px; width: 100%" class="img-responsive">
                </div>
                <div class="col-md-9 product">
                    <div class="col-md-12 row">
                        @if($product !=null)
                            @foreach($product as $item)
                                <div class="col-md-4 col-sm-6">
                                    <div class="product-image">
                                        <img src="{{asset('images/products')}}/{{$item->avatar}}" >
                                    </div>
                                    <div class="product-text">
                                        <h5>{{$item->brand_name}}</h5>
                                        <a class="title" href="{{url('')}}/{{$active_menu}}-{{$slug}}/{{Session::get('locale')}}-{{$item->id}}-{{$item->slug}}.html" title="{{$item->product_name}}">{{$item->collection_name}} - {{$item->product_name}}</a>
                                        {{--<h4>{{$item->price}} VND</h4>--}}
                                        <a class="btn" onclick="ftGetSubscribeWine('{{$item->id}}')">{{$labels[12]->name}}</a>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                    <div class="col-md-12 row text-center">
                        {{$product->links()}}
                    </div>
                </div>
            </div>
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
    </main>
@endsection