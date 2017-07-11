<header class="main-header">
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <a class="menu-header"><i class="fa fa-bars" aria-hidden="true"></i></a>
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
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" style="color: #d0b68b!important;" href="#">Vi<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Vi</a></li>
                        <li><a href="#">EN</a></li>
                    </ul>
                </li>
                <li><a href="#" style="border-left: 1px #d0b68b solid;"><i class="fa fa-user" aria-hidden="true"></i></a></li>
                <li><a href="#" style="border-left: 1px #d0b68b solid;"><i class="fa fa-search" aria-hidden="true"></i></a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a class="active" href="#">Trang chủ</a></li>
                <li><a class="">Sản phẩm</a></li>
                <li><a class="">Kiến thức rượu vang</a></li>
                <li><a class="">Wine Center</a></li>
            </ul>

            <div class="clearfix"> </div>
        </div>
    </nav>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="{{asset('images/slide/banner.jpg')}}" class="images-responsive" alt="">
            </div>

            <div class="item">
                <img src="{{asset('images/slide/banner.jpg')}}" class="images-responsive" alt="">
            </div>

            <div class="item">
                <img src="{{asset('images/slide/banner.jpg')}}" class="images-responsive" alt="">
            </div>
        </div>
        <!-- Left and right controls -->
    </div>

    <div class="baner-grids">
        <section class="banner-header">
            <div class="slider">
                <div class="col-md-4">
                    <figure class="effect-bubba">
                        <img src="{{asset('images/collection/collections.jpg')}}" class="images-responsive" alt="">
                        <figcaption>
                            <h2>Bộ Sưu Tập</h2>
                            <button class="btn">Xem Tất Cả</button>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-4">
                    <figure class="effect-bubba">
                        <img src="{{asset('images/collection/red-wine.jpg')}}" class="images-responsive" alt="">
                        <figcaption>
                            <h2>Bộ Sưu Tập</h2>
                            <button class="btn">Xem Tất Cả</button>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-4">
                    <figure class="effect-bubba">
                        <img src="{{asset('images/collection/white-wine.jpg')}}" class="images-responsive" alt="">
                        <figcaption>
                            <h2>Bộ Sưu Tập</h2>
                            <button class="btn">Xem Tất Cả</button>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-4">
                    <figure class="effect-bubba">
                        <img src="{{asset('images/collection/white-wine.jpg')}}" class="images-responsive" alt="">
                        <figcaption>
                            <h2>Bộ Sưu Tập</h2>
                            <button class="btn">Xem Tất Cả</button>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </section>
    </div>

</header>