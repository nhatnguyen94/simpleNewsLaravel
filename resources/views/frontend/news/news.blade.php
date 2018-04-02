@extends('frontend.layout.master', ['title'=>"Home"])
@section('content')
<div class="single_page">
  <ol class="breadcrumb">
    <li><a href="{{route('frontend.index')}}">Home</a></li>
    <li class="active">{{$news->category->name}}</li>
  </ol>
  <h1>{{$news->title}}</h1>
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
    <p>{!! nl2br($news->content)!!}</p>
{{--     <blockquote> Donec volutpat nibh sit amet libero ornare non laoreet arcu luctus. Donec id arcu quis mauris euismod placerat sit amet ut metus. Sed imperdiet fringilla sem eget euismod. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque adipiscing, neque ut pulvinar tincidunt, est sem euismod odio, eu ullamcorper turpis nisl sit amet velit. Nullam vitae nibh odio, non scelerisque nibh. Vestibulum ut est augue, in varius purus. </blockquote> --}}
  </div>
 {{--  <div class="social_link">
    <ul class="sociallink_nav">
      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
      <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
      <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
      <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
    </ul>
  </div> --}}
 {{--  <div class="related_post">
    <h2>Related Post <i class="fa fa-thumbs-o-up"></i></h2>
    <ul class="spost_nav wow fadeInDown animated">
      <li>
        <div class="media"> <a class="media-left" href="single_page.html"> <img src="../images/post_img1.jpg" alt=""> </a>
          <div class="media-body"> <a class="catg_title" href="single_page.html"> Aliquam malesuada diam eget turpis varius</a> </div>
        </div>
      </li>
      <li>
        <div class="media"> <a class="media-left" href="single_page.html"> <img src="../images/post_img2.jpg" alt=""> </a>
          <div class="media-body"> <a class="catg_title" href="single_page.html"> Aliquam malesuada diam eget turpis varius</a> </div>
        </div>
      </li>
      <li>
        <div class="media"> <a class="media-left" href="single_page.html"> <img src="../images/post_img1.jpg" alt=""> </a>
          <div class="media-body"> <a class="catg_title" href="single_page.html"> Aliquam malesuada diam eget turpis varius</a> </div>
        </div>
      </li>
    </ul>
  </div> --}}
</div>
@stop