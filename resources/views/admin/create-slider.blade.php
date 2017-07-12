<div class="modal fade" id="addModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-body text-center">
                <h3>Create Slider</h3>
                <div>

                    <form action="{{URL::asset('')}}admin/create-slider" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="form-group">
                            <label>Image</label>
                            <input class="form-control" type="text" name="imgSlider" id="imgSlider"/>
                            <img class="img-responsive" id="blah" >
                            <a href="#" class="btn btn-default" id="btnSelectImage">Choose Image</a>

                            <div class="clearfix"></div>
                        </div>
                        <div class="form-group">
                            <label>Sort Order</label>
                            <input class="form-control" type="number" name="sort_order" required/>
                        </div>
                        <div class="form-group">
                            <label>Status</label>
                            <select class="form-control" name="status">
                                <option value="0" >Show</option>
                                <option value="1" >Hide</option>
                            </select>

                        </div>
                        <div class="form-actions no-color">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                            <input type="submit" value="Create" class="btn btn-success"/>


                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

    <script src="{{URL::asset('')}}ckfinder/ckfinder.js"></script>
    <script>
        $('#btnSelectImage').on('click', function (e) {
            e.preventDefault();
            CKFinder.modal( {
                chooseFiles: true,
                width: 800,
                height: 600,
                onInit: function( finder ) {
                    finder.on( 'files:choose', function( evt ) {
                        var file = evt.data.files.first();
                        var output = document.getElementById( 'imgSlider' );
                        output.value=(file.get( 'name' ));
                        var blah = document.getElementById( 'blah' );
                        blah.src = file.getUrl();
                    } );

                    finder.on( 'file:choose:resizedImage', function( evt ) {
                        var output = document.getElementById( 'imgSlider' );
                        output.value=evt.data.file.get( 'name' ) ;
                        var blah = document.getElementById( 'blah' );
                        blah.src = evt.data.resizedUrl();

                    } );
                }
            } );
        })
    </script>
