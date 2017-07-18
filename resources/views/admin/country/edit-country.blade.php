@extends('admin.layout.master')
@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="dashboard_graph">

                <div class="row x_title">
                    <div class="col-md-6">
                        <h3>Edit country
                            {{--<small>Graph title sub-title</small>--}}
                        </h3>
                    </div>
                </div>
                @if ($message = Session::get('success'))
                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <p>{{ $message }}</p>
                    </div>
                @endif
                <div class="col-md-12">

                    <ul class="nav nav-tabs language_tab">
                        @foreach($language as $lang)
                            <li><a data-toggle="tab" href="#home{{$lang->id}}">{{$lang->language}}</a></li>
                        @endforeach
                    </ul>
                    <form id="demo-form2" data-parsley-validate action="{{URL::asset('')}}admin/country/edit-country-{{$id}}"
                          method="post" class="form-horizontal form-label-left">
                        <div class="tab-content">
                            @foreach($countrys as $country)
                                <div id="home{{$country->language_id}}" class="tab-pane fade">

                                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                    <h2></h2>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">country
                                            name <span
                                                    class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="" name="country_name{{$country->language_id}}" required="required"
                                                   value="{{$country->country_name}}" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>


                                </div>


                            @endforeach
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <a href="{{URL::asset('')}}admin/1-country" class="btn btn-primary" type="button">Cancel</a>
                                    <button type="submit" class="btn btn-success">Save</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>




                <div class="clearfix"></div>
            </div>
        </div>

    </div>


@endsection