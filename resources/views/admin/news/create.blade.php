@extends('admin.layout.master', ['title'=>"News Tool"])
@section('content')
<script src="//cdn.ckeditor.com/4.9.1/standard/ckeditor.js"></script>
<div class="col-lg-12">
  <div class="card">
    <div class="card-header">
      <strong>{{isset($id)?"Update":"Create"}}</strong>
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
          <div class="col-12 col-md-9"><input type="file" id="file-input" name="image_upload" class="form-control-file upload-image"></div>
        </div>
        <div class="row form-group">
          <div class="col col-md-3"><label for="file-input" class=" form-control-label">Image view</label></div>
          <div class="col-12 col-md-9">
            <img src="{{ isset($data->image)?$data->image:''}}" id="image_show" " width="200px">
            <input type="hidden" name="image" id="images_show_data" value="{{isset($data->image)?$data->image:''}}">
          </div>
        </div>

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
          <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Content</label></div>
          <div class="col-12 col-md-9"><textarea name="content" id="textarea-input" rows="3" placeholder="content" class="form-control ckeditor">{!! isset($data)?nl2br($data->lead):'' !!}</textarea>
          <script>
          CKEDITOR.replace( 'article-ckeditor' );
          </script>
          </div>
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
  $(".upload-image").change(function() {
    var form_data = new FormData();
        form_data.append('file', this.files[0]);
        form_data.append('_token', '{{csrf_token()}}');
    $.ajax({
      url: "{{route('news.uploadimage')}}", // Url to which the request is send
      data: form_data,
      type: 'POST',
      contentType: false,
      processData: false,
      success: function(res)   // A function to be called if request succeeds
      {
        dataSuccess = JSON.parse(res);
        $('#image_show').attr('src', dataSuccess.filename);
        $('#images_show_data').val(dataSuccess.filename);
        $('.upload-image').val('')
      }
    });
  });
</script>
@stop