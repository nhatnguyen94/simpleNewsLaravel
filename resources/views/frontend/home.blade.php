@extends('frontend.layout.master', ['title'=>"Home"])
@section('afterHeader')
@include('frontend.layout.include.rightshow')
@stop
@section('content')
@foreach($CategoryNews as $item)
<div class="single_post_content">
  <h2><span style="font-family: normal !important;">{{$item->name}}</span></h2>
  <?php $k = 1;?>
@if($item->news)
@foreach($item->news as $news)
  @if($k == 1)
  <div class="single_post_content_left">
    <ul class="business_catgnav  wow fadeInDown">
      <li>
        <figure class="bsbig_fig"> <a href="{{route('frontend.news',['id'=>$news->id])}}" class="featured_img"> <img alt="" src="{{isset($news->image)?$news->image:''}}"> <span class="overlay"></span> </a>
          <figcaption  > <a style="font-family: normal !important;" href="{{route('frontend.news',['id'=>$news->id])}}">{!! nl2br(isset($news->title)?$news->title:'') !!}</a> </figcaption>
          <p>{!! nl2br(isset($news->lead)?$news->lead:'') !!}</p>
        </figure>
      </li>
    </ul>
  </div>
  <div class="single_post_content_right">
    <ul class="spost_nav">
  <?php $k++;?>
  @else
      <li>
        <div class="media wow fadeInDown"> <a href="{{route('frontend.news',['id'=>$news->id])}}" class="media-left"> <img alt="" src="{{isset($news->image)?$news->image:''}}"> </a>
          <div class="media-body"> <a href="{{route('frontend.news',['id'=>$news->id])}}" class="catg_title">{!! nl2br(isset($news->title)?$news->title:'') !!}</a> </div>
        </div>
      </li>
  <?php $k++;?>
  @endif
@endforeach
    </ul>
  </div>
</div>
@endif
@endforeach
<!-- <div class="fashion_technology_area">
  <div class="fashion">
    <div class="single_post_content">
      <h2><span>Fashion</span></h2>
      <ul class="business_catgnav wow fadeInDown">
        <li>
          <figure class="bsbig_fig"> <a href="pages/single_page.html" class="featured_img"> <img alt="" src="images/featured_img2.jpg"> <span class="overlay"></span> </a>
            <figcaption> <a href="pages/single_page.html">Proin rhoncus consequat nisl eu ornare mauris</a> </figcaption>
            <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>
          </figure>
        </li>
      </ul>
      <ul class="spost_nav">
        <li>
          <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img1.jpg"> </a>
            <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 1</a> </div>
          </div>
        </li>
        <li>
          <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img2.jpg"> </a>
            <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 2</a> </div>
          </div>
        </li>
        <li>
          <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img1.jpg"> </a>
            <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 3</a> </div>
          </div>
        </li>
        <li>
          <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img2.jpg"> </a>
            <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 4</a> </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
  <div class="technology">
    <div class="single_post_content">
      <h2><span>Technology</span></h2>
      <ul class="business_catgnav">
        <li>
          <figure class="bsbig_fig wow fadeInDown"> <a href="pages/single_page.html" class="featured_img"> <img alt="" src="images/featured_img3.jpg"> <span class="overlay"></span> </a>
            <figcaption> <a href="pages/single_page.html">Proin rhoncus consequat nisl eu ornare mauris</a> </figcaption>
            <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>
          </figure>
        </li>
      </ul>
      <ul class="spost_nav">
        <li>
          <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img1.jpg"> </a>
            <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 1</a> </div>
          </div>
        </li>
        <li>
          <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img2.jpg"> </a>
            <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 2</a> </div>
          </div>
        </li>
        <li>
          <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img1.jpg"> </a>
            <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 3</a> </div>
          </div>
        </li>
        <li>
          <div class="media wow fadeInDown"> <a href="pages/single_page.html" class="media-left"> <img alt="" src="images/post_img2.jpg"> </a>
            <div class="media-body"> <a href="pages/single_page.html" class="catg_title"> Aliquam malesuada diam eget turpis varius 4</a> </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</div> -->
@stop
