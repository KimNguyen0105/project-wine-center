<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10&appId=698522913672239";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<header class="main-header">
    <nav class="navbar navbar-default menu-home-header">
        <div class="navbar-header">
            {{--<a class="menu-header"><i class="fa fa-bars" aria-hidden="true"></i></a>--}}
            <div class="dropdown menu-search">
                <button class="btn btn-primary dropdown-toggle menu-header" id="menu1" type="button" data-toggle="dropdown"><i class="fa fa-bars" aria-hidden="true"></i></button>
                <ul class="dropdown-menu dropdown-menu-search" role="menu" aria-labelledby="menu1">
                    <li><a>{{$labels[0]->name}}</a>
                        <ul class="li-search">
                            @if($brands !=null)
                                @foreach($brands as $item)
                                    <li><a href="{{url('/')}}/{{$search}}/{{$item->slug}}/brand-{{$item->id}}/filter-product.html">{{$item->name}}</a></li>
                                    {{--<li><a href="{{url('/12.html')}}">{{$item->name}}</a></li>--}}
                                @endforeach
                            @endif

                        </ul>
                    </li>
                    <li><a>{{$labels[1]->name}}</a>
                        <ul class="li-search">
                            <li><a href="{{url('/')}}/{{$search}}/price-1/filter-product.html">{{$labels[8]->name}}</a></li>
                            <li><a href="{{url('/')}}/{{$search}}/price-2/filter-product.html">{{$labels[9]->name}}</a></li>
                            <li><a href="{{url('/')}}/{{$search}}/price-3/filter-product.html">{{$labels[10]->name}}</a></li>
                            <li><a href="{{url('/')}}/{{$search}}/price-4/filter-product.html">{{$labels[11]->name}}</a></li>
                        </ul>
                    </li>
                    <li><a>{{$labels[2]->name}}</a>
                        <ul class="li-search">
                            @if($collections !=null)
                                @foreach($collections as $item)
                                    <li><a href="{{url('/')}}/{{$search}}/{{$item->slug}}/collection-{{$item->id}}/filter-product.html">{{$item->name}}</a></li>
                                @endforeach
                            @endif

                        </ul>
                    </li>
                </ul>
            </div>
            <a class="logo">Logo</a>

            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
            <ul class="nav navbar-nav navbar-right menu-language">
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" style="color: #d0b68b" href="#">{{Session::get('locale_name')}}<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        @if($language!=null)
                            @foreach($language as $item)
                                <li><a href="{{url('language')}}-{{$item->id}}">{{$item->language}}</a></li>
                            @endforeach
                        @endif

                    </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"  style="border-left: 1px #d0b68b solid;"><i class="fa fa-search" aria-hidden="true"></i></a>
                    <ul class="dropdown-menu li-search">
                        <li>
                            <form action="{{url('')}}/{{$search}}/search-product.html" method="get">
                                <input type="text" name="name" class="form-control" placeholder="Quốc gia, thương hiệu, collection, name">
                                <input type="submit" class="btn" value="Search">
                            </form>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right menu-home">
                @if($menu !=null)
                    @for($i=0; $i<count($menu);$i++)
                    @if($menu[$i]->id==$active_menu)
                        @if($i==0)
                            <li><a class="active" href="{{url('/')}}">{{$menu[$i]->name}}</a></li>
                        @else
                            <li><a class="active" href="{{url('')}}/{{$menu[$i]->language_id}}-{{$menu[$i]->id}}-{{$menu[$i]->slug}}.html">{{$menu[$i]->name}}</a></li>
                        @endif
                    @else
                        @if($i==0)
                            <li><a href="{{url('/')}}">{{$menu[$i]->name}}</a></li>
                        @else
                            <li><a href="{{url('')}}/{{$menu[$i]->language_id}}-{{$menu[$i]->id}}-{{$menu[$i]->slug}}.html">{{$menu[$i]->name}}</a></li>
                        @endif
                    @endif

                    @endfor
                @endif
            </ul>
            <div class="clearfix"> </div>
        </div>
    </nav>
</header>
<div id="modalConfirm" class="modal fade" role="dialog">
    <div class="modal-dialog modal-sm">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">{{$labels[41]->name}}</h4>
            </div>
            <div class="modal-body">
                <p id="txtMessage"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
            </div>
        </div>

    </div>
</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content product-content">
            <form id="formSubscribeWine" action="{{url('subscribe-wine')}}" method="post">
                <div class="modal-header">
                    <h4>{{$labels[36]->name}}</h4>
                </div>
                <div class="wine-contact modal-body">
                    <div class="col-md-9 col-md-offset-3">

                        <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
                        <input type="hidden" name="id" id="id"/>
                        <div class="form-group">
                            <input type="text" class="form-control" name="name" id="name" placeholder="{{$labels[30]->name}}" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="{{$labels[31]->name}}" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="phone" id="phone" placeholder="{{$labels[32]->name}}" required>
                        </div>
                        {{--<div class="form-group">--}}
                        {{--<select class="form-control">--}}
                        {{--<option>{{$labels[37]->name}}</option>--}}
                        {{--</select>--}}
                        {{--</div>--}}
                        <div class="form-group">
                            <div class='input-group date' id='datetimepicker6'>
                                <input type='text' name="date" class="form-control" placeholder="{{$labels[38]->name}}" required>
                                <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="message" placeholder="{{$labels[40]->name}}" rows="5"></textarea>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" id="btnSubscribeWine" class="btn" value="{{$labels[35]->name}}">
                    <a class="btn" data-dismiss="modal">{{$labels[39]->name}}</a>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function ftGetSubscribeWine(id) {
        $('#id').val(id);
        $('#myModal').modal('show');
    }
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $(function () {
            $('#datetimepicker6').datetimepicker();
        });
    });
</script>
<script src="{{asset('js/jquery.validate.js')}}"></script>
<script>
    jQuery(document).ready(function() {
        jQuery('#formSubscribeWine').validate({
            rules: {
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
                date: {
                    required: 'Chưa chọn ngày giờ.'
                }
            }
        });
        jQuery('#btnSubscribeWine').click(function(evt) {
            evt.preventDefault();
            jQuery('#formSubscribeWine').submit()
        });
    });
</script>