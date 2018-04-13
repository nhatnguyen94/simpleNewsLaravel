@extends('admin.layout.master', ['title'=>"Category News Tool"])
@section('content')
<div class="col-lg-12">
  <div class="card">
    <div class="card-header">
      <strong>{{isset($id)?"Update":"Create"}}</strong>
    </div>
    <div class="card-body card-block">
      @if(isset($id))
      <form action="{{route('categorynews.store',['id'=>$id])}}" method="post" enctype="multipart/form-data" class="form-horizontal">
      @else
      <form action="{{route('categorynews.store')}}" method="post" enctype="multipart/form-data" class="form-horizontal">
      @endif
        <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">

        <div class="row form-group">
          <div class="col col-md-3"><label for="text-input" class=" form-control-label">Title</label></div>
          <div class="col-12 col-md-9">
            <input type="text" id="text-input" name="name" value="{{isset($data)?$data->name:''}}" placeholder="Category name" class="form-control">
            <small class="form-text text-muted">This is a name category news</small>
          </div>
        </div>

        <div class="row form-group">
          <div class="col col-md-3"><label class=" form-control-label">Category news pins</label></div>
          <div class="col col-md-9">
            <div class="form-check-inline form-check">
              <label for="inline-checkbox1" class="form-check-label ">
                <input type="checkbox" id="inline-checkbox1" name="pins" @if(isset($data) && $data->pins == '1') {{"checked"}} @endif class="form-check-input">Pins
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