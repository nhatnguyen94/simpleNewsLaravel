<section id="sliderSection">
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-8">
      <div class="slick_slider">
        @php
        $dataSide = DB::table('news')->select()->where('status','1')->limit(5)->get();
        @endphp
        @if($dataSide)
        @foreach($dataSide as $item)
        <div class="single_iteam"> <a href="{{route('frontend.news',['id'=>$item->id])}}"> <img src="{{isset($item->image)?$item->image:''}}" alt=""></a>
          <div class="slider_article">
            <h2><a class="slider_tittle" href="{{route('frontend.news',['id'=>$item->id])}}">{!! nl2br(isset($item->title)?$item->title:'') !!}</a></h2>
            <p>{!! nl2br(isset($item->lead)?$item->lead:'') !!}</p>
          </div>
        </div>
        @endforeach
        @endif
      </div>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4">
      <div class="latest_post">
        <h2><span>Latest post</span></h2>
        <div class="latest_post_container">
          <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
          <ul class="latest_postnav">
            @if($dataSide)
            @foreach($dataSide as $item)
            <li>
              <div class="media"> <a href="{{route('frontend.news',['id'=>$item->id])}}" class="media-left"> <img alt="" src="{{isset($item->image)?$item->image:''}}"> </a>
                <div class="media-body"> <a href="{{route('frontend.news',['id'=>$item->id])}}" class="catg_title">{!! nl2br(isset($item->title)?$item->title:'') !!}</a> </div>
              </div>
            </li>
            @endforeach
            @endif
          </ul>
          <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
        </div>
      </div>
    </div>
  </div>
</section>