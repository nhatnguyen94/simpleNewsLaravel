@extends('admin.layout.master', ['title'=>"Create News"])
@section('header')
<script src="//cdn.ckeditor.com/4.9.0/standard/ckeditor.js"></script>
@stop
@section('content')

<div class="col-lg-12">
  <div class="card">
    <div class="card-header">
      <strong>Basic Form</strong> Elements
    </div>
    <div class="card-body card-block">
      @if(isset($id))
      <form action="{{route('news.store',['id'=>$id])}}" method="post" enctype="multipart/form-data" class="form-horizontal">
      @else
      <form action="{{route('news.store')}}" method="post" enctype="multipart/form-data" class="form-horizontal">
      @endif
        <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
        <div class="row form-group">
          <div class="col col-md-3"><label for="select" class=" form-control-label">Category</label></div>
          <div class="col-12 col-md-9">
            <select name="category_news_id" id="select" class="form-control">
              @foreach($dataCategory as $item)
                <option value="{{$item->id}}" @if(isset($data) && $data->category_news_id == $item->id) {{"selected"}} @endif>{{$item->name}}</option>
              @endforeach
              
            </select>
          </div>
        </div>

        <div class="row form-group">
          <div class="col col-md-3"><label for="file-input" class=" form-control-label">File input</label></div>
          <div class="col-12 col-md-9"><input type="file" id="file-input" name="image_upload" class="form-control-file"></div>
        </div>
        @if(isset($data) && $data->image)
        <div class="row form-group">
          <div class="col col-md-3"><label for="file-input" class=" form-control-label">Image old</label></div>
          <div class="col-12 col-md-9">
            <img src="{{ $data->image}}" width="200px">
          </div>
        </div>
        @endif

        <div class="row form-group">
          <div class="col col-md-3"><label for="text-input" class=" form-control-label">Title</label></div>
          <div class="col-12 col-md-9">
            <input type="text" id="text-input" name="title" value="{{isset($data)?$data->title:''}}" placeholder="Title" class="form-control">
            {{-- <small class="form-text text-muted">This is a help text</small> --}}
          </div>
        </div>

      {{--   <div class="row form-group">
          <div class="col col-md-3"><label for="password-input" class=" form-control-label">Password</label></div>
          <div class="col-12 col-md-9"><input type="password" id="password-input" name="password-input" placeholder="Password" class="form-control"><small class="help-block form-text">Please enter a complex password</small></div>
        </div> --}}
        <div class="row form-group">
          <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Lead</label></div>
          <div class="col-12 col-md-9"><textarea name="lead" id="textarea-input" rows="3" placeholder="lead" class="form-control">{!! isset($data)?nl2br($data->lead):'' !!}</textarea></div>
        </div>

        <div class="row form-group">
          <div class="col col-md-3"><label for="textarea-input " class=" form-control-label">Content</label></div>
          <div class="col-12 col-md-9"><textarea class="ckeditor" name="content" id="textarea-input editor1" rows="3" placeholder="content" class="form-control">{!! isset($data)?nl2br($data->content):'' !!}</textarea></div>
          
        </div>

        <div class="row form-group">
          <div class="col col-md-3"><label class=" form-control-label">Status</label></div>
          <div class="col col-md-9">
            <div class="form-check-inline form-check">
              <label for="inline-checkbox1" class="form-check-label ">
                <input type="checkbox" id="inline-checkbox1" name="status" @if(isset($data) && $data->status == '1') {{"checked"}} @endif class="form-check-input">Show
              </label>
            </div>
          </div>
        </div>
    </div>
    <div class="card-footer">
      <button type="submit" class="btn btn-primary btn-sm">
        <i class="fa fa-dot-circle-o"></i> Submit
      </button>
    </div>
      </form>
  </div>
</div>
@stop
@section('script')
<script>
          CKEDITOR.replace( 'editor1' );
          </script>
@stop