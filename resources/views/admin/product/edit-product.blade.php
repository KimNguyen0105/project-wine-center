@extends('admin.layout.master')
@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="dashboard_graph">

                <div class="row x_title">
                    <div class="col-md-6">
                        <h3>Edit Product</h3>
                    </div>
                </div>

                <form id="demo-form2" data-parsley-validate action="{{URL::asset('')}}admin/product/edit-product-{{$id}}"
                      method="post" class="form-horizontal form-label-left" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="col-md-8">
                        <ul class="nav nav-tabs language_tab">
                            @foreach($language as $lang)
                                <li><a data-toggle="tab" href="#home{{$lang->id}}">{{$lang->language}}</a></li>
                            @endforeach
                        </ul>

                        <div class="tab-content">

                            <script src="{{URL::asset('')}}ckeditor/ckeditor.js"></script>
                                @foreach($products as $product)

                                    <div id="home{{$product->language_id}}" class="tab-pane fade">
                                        <div class="form-group">
                                            <label class="col-md-12 col-sm-3 col-xs-12" for="first-name">Product Name
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-12 col-sm-9 col-xs-12">
                                                <input type="text" id="product_name{{$product->language_id}}" name="product_name{{$product->language_id}}" required
                                                       value="{{$product->product_name}}"  class="form-control col-md-12 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-12 col-sm-3 col-xs-12" for="first-name">Product Content
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-12 col-sm-9 col-xs-12">
                                            <textarea type="text" id="product_content{{$product->language_id}}" name="product_content{{$product->language_id}}" required
                                                      class="ckeditor form-control col-md-12 col-xs-12">{{$product->product_content}}</textarea>
                                            </div>
                                        </div>
                                    </div>

                                <script>
                                    CKEDITOR.replace('product_content{{$product->language_id}}', {
                                        filebrowserBrowseUrl: '{{URL::asset('')}}ckfinder/ckfinder.html',
                                        filebrowserImageBrowseUrl: '{{URL::asset('')}}ckfinder/ckfinder.html?type=Product',
                                        filebrowserUploadUrl: '{{URL::asset('')}}ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
                                        filebrowserImageUploadUrl: '{{URL::asset('')}}ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Product'
                                    });

                                </script>
                                @endforeach
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <label class="col-md-12 col-sm-3 col-xs-12" for="first-name">Product Image</label>
                                <div class="col-md-12 col-sm-9 col-xs-12 text-left">
                                    <input id="input-id" type="file" name="imgDetail[]" class="file" multiple data-preview-file-type="text" value="">
                                </div>
                            </div>
                            @if($products_image !=null)
                                <div class="col-md-12" style="padding-bottom: 20px">
                                    @foreach ($products_image as $row)
                                        <div class="col-md-3 col-xs-6" style="padding: 10px">
                                            <a href="{{URL::asset('')}}admin/product/remove-product-image-{{$row->id}}" onclick="confirm('Are you sure you want to delete')" style="position: absolute;float: right" data-method="post"
                                               class="btn btn-xs btn-danger">
                                                <i class="fa fa-trash" title="Delete"></i>
                                            </a>
                                            <img src="{{asset('images/products')}}/{{$row->link}}" class="img-responsive" style="width: 100%; height: 200px">
                                        </div>
                                    @endforeach
                                </div>
                            @endif
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <a href="{{URL::asset('admin/1-product')}}" class="btn btn-primary" type="button">Cancel</a>
                                    <button type="submit" class="btn btn-success">Save</button>
                                </div>
                            </div>

                        </div>

                    </div>

                    <div class="col-md-4">

                        <div class="form-group">
                            <label class="col-md-12 col-sm-3 col-xs-12" for="first-name">Price</label>
                            <div class="col-md-12 col-sm-6 col-xs-12">
                                <input type="text" id="price" name="price" value="{{$product->price}}" class="form-control col-md-7 col-xs-12"
                                       required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-12 col-sm-3 col-xs-12" for="first-name">Collection
                                Name </label>
                            <div class="col-md-12 col-sm-6 col-xs-12">
                                <select name="collection_id"  class="form-control col-md-7 col-xs-12" required>
                                    @if($collections!=null)
                                        @foreach($collections as $collection)
                                            @if($collection->parrent_id == 0)
                                                <option disabled style="font-weight: bold;">{{$collection->collection_name}}</option>
                                                <?php $child=DB::table('hbb_collection')
                                                    ->join('hbb_collection_translation', 'hbb_collection.id', '=', 'hbb_collection_translation.collection_id')
                                                    ->where('hbb_collection_translation.language_id',2)
                                                    ->where('hbb_collection.parrent_id',$collection->id )
                                                    ->select('hbb_collection.*', 'hbb_collection_translation.collection_name')
                                                    ->get();
                                                ?>
                                                @if($child!=null)
                                                    @foreach($child as $i)
                                                        @if($i->id == $product->collection_id)
                                                        <option value="{{$i->id}}" selected>--{{$i->collection_name}}</option>
                                                        @else
                                                            <option value="{{$i->id}}">--{{$i->collection_name}}</option>
                                                        @endif

                                                    @endforeach
                                                @endif

                                            @endif
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12 col-sm-3 col-xs-12" for="first-name">Coutry Name </label>
                            <div class="col-md-12 col-sm-6 col-xs-12">
                                <select name="country_id" class="form-control col-md-7 col-xs-12">
                                    @if($countrys!=null)
                                        @foreach($countrys as $country)
                                            @if($country->id == $product->country_id)
                                            <option value="{{$country->id}}" selected>{{$country->country_name}}</option>
                                            @else
                                                <option value="{{$country->id}}">{{$country->country_name}}</option>
                                            @endif
                                        @endforeach
                                    @endif

                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12 col-sm-3 col-xs-12" for="first-name">Brand
                                Name </label>
                            <div class="col-md-12 col-sm-6 col-xs-12">
                                <select name="brand_id" class="form-control col-md-7 col-xs-12">
                                    @if($brands!=null)
                                        @foreach($brands as $brand)
                                            @if($brand->id == $product->brand_id)
                                            <option value="{{$brand->id}}" selected>{{$brand->brand_name}}</option>
                                            @else
                                                <option value="{{$brand->id}}">{{$brand->brand_name}}</option>
                                            @endif
                                        @endforeach
                                    @endif

                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12 col-sm-3 col-xs-12" for="first-name">Status</label>
                            <div class="col-md-12 col-sm-6 col-xs-12">
                                <select name="status" class="form-control col-md-7 col-xs-12">
                                    @if($product->status == 1)
                                        <option value="0">Waiting</option>
                                        <option value="1" selected>Approved</option>
                                    @else
                                        <option value="0" selected>Waiting</option>
                                        <option value="1">Approved</option>
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12 col-sm-3 col-xs-12" for="first-name">Avata<span
                                        class="required">*</span>
                            </label>
                            <div class="col-md-12 col-sm-6 col-xs-12">
                                <input type="text" id="imgAvatar" name="imgAvatar" value="{{$product->avatar}}" required="required"
                                       class="form-control col-md-7 col-xs-12">
                                <img src="{{URL::asset('')}}/images/products/{{$product->avatar}}" class="img-responsive" id="blah">
                                <a href="#" class="btn btn-info" id="btnSelectImage">Choose Image</a>
                            </div>
                        </div>

                    </div>

                </form>


                <div class="clearfix"></div>
            </div>
        </div>

    </div>
@endsection

<script>
    $(function () {
        $("#input-id").fileinput();
    });
    $('#btnSelectImage').on('click', function (e) {
        e.preventDefault();
        CKFinder.modal( {
            chooseFiles: true,
            width: 800,
            height: 600,
            onInit: function( finder ) {
                finder.on( 'files:choose', function( evt ) {
                    var file = evt.data.files.first();
                    var output = document.getElementById( 'imgAvatar' );
                    output.value=(file.get('name'));
                    var blah = document.getElementById( 'blah' );
                    blah.src = file.getUrl();
                } );

                finder.on( 'file:choose:resizedImage', function( evt ) {
                    var output = document.getElementById( 'imgAvatar' );
                    output.value=evt.data.file.get('name') ;
                    var blah = document.getElementById( 'blah' );
                    blah.src = evt.data.resizedUrl();
                } );
            }
        } );
    })
</script>
@section('scripts')

    <script src="{{URL::asset('')}}ckfinder/ckfinder.js"></script>
    <script>
        $('#btnSelectImage').on('click', function (e) {
            e.preventDefault();
            CKFinder.modal({
                chooseFiles: true,
                width: 800,
                height: 600,
                onInit: function (finder) {
                    finder.on('files:choose', function (evt) {
                        var file = evt.data.files.first();
                        var output = document.getElementById('imgAvatar');
                        output.value = (file.get('name'));
                        var blah = document.getElementById('blah');
                        blah.src = file.getUrl();
                    });

                    finder.on('file:choose:resizedImage', function (evt) {
                        var output = document.getElementById('imgAvatar');
                        output.value = evt.data.file.get('name');
                        var blah = document.getElementById('blah');
                        blah.src = evt.data.resizedUrl();

                    });
                }
            });
        })
    </script>
    @endsection