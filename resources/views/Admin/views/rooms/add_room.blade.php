@extends('Admin.views.master')
@section('MyStyle')
	<style>
		.myForm{
			 padding: 6px 12px;
		    font-size: 14px;
		    line-height: 1.42857143;
		    color: #555;
		    background-color: #fff;
		    background-image: none;
		    border: 1px solid #ccc;
		    border-radius: 4px;
		    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
		    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
		    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
		    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
		    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
		}
	</style>
@endsection
@section('Content')
	<section id="main-content">
		<section class="wrapper">
	        <h3><i class="fa fa-angle-right"></i> Add Room</h3>
	        <!--ADVANCED FILE INPUT-->
	        <div class="row mt">
	          <div class="col-sm-9">
	            <div class="form-panel">
		              <form action="#" class="form-horizontal style-form">
		                <div class="form-group">
		                  <label class="col-sm-2 col-sm-offset-1 control-label">Room Type</label>
		                  <div class="col-sm-7">
		                    <select class="form-control">
			                  <option>လုံးချင်း</option>
			                  <option>တိုက်ခန်း</option>
			                  <option>အဆောင်</option>
			                </select>
		                  </div>
		                </div>
		              	<div class="form-group">
		                  <label class="col-sm-offset-1 col-sm-2 control-label">Township</label>
		                  <div class="col-sm-7">
		                    <select class="form-control">
		                    	@foreach($townships as $township)
			                  		<option>{{$township->township_name}}</option>
		                    	@endforeach
			                </select>
		                  </div>
		                </div>
		                <div class="form-group">
		                  <label class="col-sm-offset-1 col-sm-2 control-label">User Type</label>
		                  <div class="col-sm-7">
		                    <select class="form-control">
			                  <option>အမျိုးသား</option>
			                  <option>အမျိုးသမီး</option>
			                  <option>အိမ်ထောင်သည်</option>
			                </select>
		                  </div>
		                </div>
		                <div class="form-group">
		                  <label class="col-sm-offset-1 col-sm-2 control-label">Price</label>
		                  <div class="col-sm-7">
		                    <input class="form-control" id="" type="text" value="">
		                  </div>
		                </div>
		                <div class="form-group">
		                  <label class="col-sm-offset-1 col-sm-2 control-label">Phone</label>
		                  <div class="col-sm-7">
		                   <input class="form-control" id="disabledInput" type="text" placeholder="">
		                  </div>
		                </div>
		                <div class="form-group">
		                  <label class="col-sm-offset-1 col-sm-2 control-label">Address</label>
		                  <div class="col-sm-7">
		                    <div class="form-group row">
				                  <label class="col-sm-2" for="">အမှတ်</label>
				                  <input type="text" class="col-sm-4 myForm" id="" placeholder="">
				                <!-- </div> -->
				                <!-- <div class="form-group"> -->
				                  <label class="col-sm-2" for="">အလွှာ</label>
				                  <input type="text" class="col-sm-4 myForm" id="" placeholder="">
				            </div>
				            <div class="form-group row">
				                  <label class="col-sm-2" for="">လမ်း</label>
				                  <input type="text" class="col-sm-4 myForm" id="" placeholder="">
				                <!-- </div> -->
				                <!-- <div class="form-group"> -->
				                  <label class="col-sm-2" for="">ရပ်ကွက်</label>
				                  <input type="text" class="col-sm-4 myForm" id="" placeholder="">
				                </div>
		                  </div>
		                </div>
		                <div class="form-group">
		                  <label class="col-sm-offset-1 col-sm-2 control-label">Facility</label>
		                  <div class="col-sm-7">
		                    <textarea class="form-control" placeholder="Wifi, ရေသန့်"></textarea>
		                  </div>
		                </div>
		                <div class="form-group">
		                  <label class="col-sm-offset-1 col-sm-2 control-label">Description</label>
		                  <div class="col-sm-7">
		                    <textarea class="form-control" placeholder="စည်းကမ်းရှိသူ ဘာညာ"></textarea>
		                  </div>
		                </div>
		                <div class="form-group last">
		                  <label class="col-sm-2 col-sm-offset-1 control-label">Image Upload</label>
		                  <div class="col-md-9">
		                    <div class="fileupload fileupload-new" data-provides="fileupload">
		                      <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
		                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" alt="" />
		                      </div>
		                      <!-- <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div> -->
		                      <div>
		                        <span class="btn btn-theme02 btn-file">
		                          <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select image</span>
		                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
		                        <input type="file" class="default" />
		                        </span>
		                        </div>
		                    </div>
		                    <span class="label label-info">NOTE!</span>
		                    <span>
		                      Attached image thumbnail is
		                      supported in Latest Firefox, Chrome, Opera,
		                      Safari and Internet Explorer 10 only
		                      </span>
		                  </div>
		                </div>
		              </form>
	            </div>
	            <!-- /form-panel -->
	          </div>
	          <!-- /col-lg-12 -->
	        </div>
	        <!-- row -->
	    </section>
	</section>
@endsection