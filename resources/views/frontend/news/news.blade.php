@extends('frontend.layout.master', ['title'=>$news->title])
@section('content')
<div class="single_page">
  <ol class="breadcrumb">
    <li><a href="{{route('frontend.index')}}">Home</a></li>
    <li class="active">{{$news->category->name}}</li>
  </ol>
  <h1 style="font-family: normal">{{$news->title}}</h1>
  <div class="post_commentbox">
   <a href="#"><i class="fa fa-user">
   </i>{{$news->user->name}}</a>
    <span>
      <i class="fa fa-calendar"></i>{{$news->updated_at}}
    </span>
     {{-- <a href="#"> --}}
    {{-- <i class="fa fa-tags"></i>Technology</a>  --}}
  </div>
  <div class="single_page_content"> <img class="img-center" src="{{$news->image}}" alt="">
    <p>{!!nl2br($news->content)!!}</p>
  </div>
  <div class="related_post">
    <h2>Related Post <i class="fa fa-thumbs-o-up"></i></h2>
    <ul class="spost_nav wow fadeInDown animated">
        <?php
$related = DB::table('news')->where('category_news_id', $news->category_news_id)->whereNotIn('id', [$news->id])->orderBy('created_at', 'DESC')->limit(3)->get();
?>
@foreach($related as $item)
      <li>
        <div class="media"> <a class="media-left" href="{{route('frontend.news',['id'=>$item->id])}}"> <img src="{{$item->image}}" alt=""> </a>
          <div class="media-body"> <a class="catg_title" href="{{route('frontend.news',['id'=>$item->id])}}">{{$item->lead}}</a> </div>
        </div>
      </li>
@endforeach
    </ul>
  </div>
</div>
<br>
  <section id="contentSection">
    <div class="row">
      <div class="col-lg-12">
        <div class="left_content">
          <div class="contact_area dataComment ex1" data-spy="scroll" data-target="#navbar-example2" data-offset="0">
            <h2>Comment list : </h2>
@if(isset($news->comentable[0]))
            @foreach($news->comentable as $comment)
            <article class="comment">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">Email : {{$comment->email}} | {{$comment->created_at}}</h3>
                </div>
                <div class="panel-body">{{$comment->content}}</div>
              </div>
            </article>
            @endforeach
@endif
          </div>
        </div>
      </div>
    </div>
  </section>​
  <section id="contentSection">
    <div class="row">
      <div class="col-lg-12">
        <div class="left_content">
          <div class="contact_area">
            <h2>What do you think ? </h2>
            <div>
              <p style="color:red" class="comment_error"></p>
            </div>
            <form action="" class="comment_form">
              <input type="hidden" name="_token" value="{{csrf_token()}}">
              <input type="hidden" name="id" value="{{$news->id}}">
              <input class="form-control" type="text" name="name" placeholder="Name*">
              <input class="form-control" type="email" name="email" placeholder="Email*">
              <textarea class="form-control" cols="30" rows="10" name="content" placeholder="Comment content*"></textarea>
              <input type="submit" value="Send Comment">
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
@stop
@section('content2')
<aside class="right_content">
<div class="single_sidebar">
  <h2><span>Popular Post</span></h2>
  <ul class="spost_nav">
            <?php
$Popular = DB::table('news')->whereNotIn('id', [$news->id])->orderBy('created_at', 'DESC')->limit(4)->get();
?>
@foreach($Popular as $item)
        <li>
          <div class="media"> <a class="media-left" href="{{route('frontend.news',['id'=>$item->id])}}"> <img src="{{$item->image}}" alt=""> </a>
            <div class="media-body"> <a class="catg_title" href="{{route('frontend.news',['id'=>$item->id])}}">{{$item->lead}}</a> </div>
          </div>
        </li>
@endforeach
  </ul>
</div>
</aside>
@stop

@section('script')
<script>
  $(".comment_form").submit(function(e) {

    var url = "{{route('frontend.news.comment')}}";

    $.ajax({
           type: "POST",
           url: url,
           data: $(".comment_form").serialize(), // serializes the form's elements.
           success: function(data)
           {
              $('.dataComment').html('');
              dataSuccess = JSON.parse(data)
              $.each(dataSuccess, function(i, item) {
                $(".dataComment" ).append( '<article class="comment"><div class="panel panel-info"><div class="panel-heading"><h3 class="panel-title">Email : '+dataSuccess[i].email+' | '+dataSuccess[i].created_at+'</h3></div><div class="panel-body">'+dataSuccess[i].content+'</div></div></article>');
              });
           }
         });

    e.preventDefault(); // avoid to execute the actual submit of the form.
});
</script>
<style>
    div.ex1 {
    width: 100%;
    max-height: 350px;
    overflow-y: scroll;
}
</style>
@stop
