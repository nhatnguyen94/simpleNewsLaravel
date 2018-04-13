@extends('frontend.layout.master', ['title'=>$search])
@section('content')
<div class="single_post_content">
  <h2><span>Search title post : {{$search}}</span></h2>
  @if(isset($news[0]))
  <?php $k = 1;?>
  @foreach($news as $item)
  @if($k == 1)
  <ul class="business_catgnav wow fadeInDown">
    <li>
        <figure class="bsbig_fig"> <a href="{{route('frontend.news',['id'=>$item->id])}}" class="featured_img"> <img alt="" src="{{isset($item->image)?$item->image:''}}"> <span class="overlay"></span> </a>
          <figcaption> <a href="{{route('frontend.news',['id'=>$item->id])}}">{!! nl2br(isset($item->title)?$item->title:'') !!}</a> </figcaption>
          <p>{!! nl2br(isset($item->lead)?$item->lead:'') !!}</p>
        </figure>
      </li>
  </ul>
  <?php $k++;?>
  @else
  <ul class="spost_nav">
    <li>
      <div class="media wow fadeInDown"> <a href="{{route('frontend.news',['id'=>$item->id])}}" class="media-left"> <img alt="" src="{{isset($item->image)?$item->image:''}}"> </a>
        <div class="media-body"> <a href="{{route('frontend.news',['id'=>$item->id])}}" class="catg_title">{!! nl2br(isset($item->title)?$item->title:'') !!}</a>
        <p>{!! nl2br(isset($item->lead)?$item->lead:'') !!}</p>
        </div>
      </div>
    </li>
  </ul>
  <?php $k++;?>
  @endif
  @endforeach
  @else
    <h3>*Can not find any articles with keywords : {{$search}} !</h3>
  @endif
</div>
@stop
@section('content2')
<aside class="right_content">
<div class="single_sidebar">
  <h2><span>Popular Post</span></h2>
  <ul class="spost_nav">
            <?php
$Popular = DB::table('news')->orderBy('created_at', 'DESC')->limit(4)->get();
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
