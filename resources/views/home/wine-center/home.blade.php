@extends('home.layouts.master_detail')
@section('Content')
    <main>
        <section class="slider-product">
            <h5>{{$labels[20]->name}} > {{$labels[21]->name}} > {{$labels[28]->name}}</h5>
        </section>
        <section class="main-product">
            <div class="container">
            <div class="col-md-12">
                <div class="col-md-3">
                    <ul class="menu-product">
                        <li class="item1"><a>{{$labels[21]->name}}</a></li>
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
                <div class="col-md-9 wine-contact">
                    <div class="col-md-11 col-md-offset-1">
                        <div class="contact">
                            <h1>{{$labels[29]->name}}</h1>
                            <form id="formContact" class="form-contact" action="{{url('submit-contact')}}" method="post">
                                <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" required placeholder="{{$labels[30]->name}}">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" required placeholder="{{$labels[31]->name}}">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="phone" required placeholder="{{$labels[32]->name}}">
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" name="message" placeholder="{{$labels[33]->name}}" rows="6" required></textarea>
                                </div>
                                <div class="col-md-12 code-cotact" style="padding-left: 0px">
                                    <input type="text" name="key" id="key" value="{{$pin}}" disabled>
                                    <input type="text" name="rekey" id="rekey" placeholder="{{$labels[34]->name}}"required>
                                    <input type="submit" id="btnSend" class="btn" value="{{$labels[35]->name}}">
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
                                </div>
                                <div style="clear: both"></div>

                            </form>
                        </div>
                        <div class="product address">
                            <div class="nav-tabs-custom tab-product">
                                <ul class="nav nav-tabs">
                                    @if($address_map!=null)
                                        @for($i=0;$i<count($address_map);$i++)
                                            @if($i==0)
                                                <li class="active"><a href="#tab_{{$address_map[$i]->id}}" data-toggle="tab" aria-expanded="true">{{$address_map[$i]->name}}</a></li>
                                            @else
                                                <li><a href="#tab_{{$address_map[$i]->id}}" data-toggle="tab" aria-expanded="true">{{$address_map[$i]->name}}</a></li>
                                            @endif
                                        @endfor
                                    @endif
                                </ul>
                                <div class="tab-content">
                                    @if($address_map!=null)
                                        @for($i=0;$i<count($address_map);$i++)
                                            @if($i==0)
                                                <div class="tab-pane active" id="tab_{{$address_map[$i]->id}}">
                                                    <iframe src="{{$address_map[$i]->sitemap}}"
                                                            width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                                                </div>
                                            @else
                                                <div class="tab-pane" id="tab_{{$address_map[$i]->id}}">
                                                    <iframe src="{{$address_map[$i]->sitemap}}"
                                                            width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                                                </div>
                                            @endif
                                        @endfor
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </section>
    </main>

    <script>
        jQuery(document).ready(function() {
            jQuery('#formContact').validate({
                rules: {
                    "rekey": {
                        equalTo: "#key"
                    },
                    "email":{
                        email:true
                    }
                },
                messages:{
                    name: {
                        required: 'Tên không trống.'
                    },
                    email: {
                        required: 'Email không được trống.',
                        email: 'Email không hợp lệ'
                    },
                    phone: {
                        required: 'Số điện thoại không được trống.'
                    },
                    "rekey": {
                        required: 'Chưa nhập mã xác nhận.',
                        equalTo: 'Mã xác nhận chưa đúng'
                    },
                    message:{
                        required: 'Nội dung không được trống.',
                    }
                }
            });
            jQuery('#btnSend').click(function(evt) {
                evt.preventDefault();
                jQuery('#formContact').submit()
            });
        });
    </script>
@endsection