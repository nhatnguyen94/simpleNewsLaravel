<section id="navArea" style="font-family: normal">
  <nav class="navbar navbar-inverse" role="navigation">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav main_nav">
        <li class="active"><a href="/"><span class="fa fa-home desktop-home"></span><span class="mobile-show">Home</span></a></li>
        @php
        $dataCategory = DB::table('category_news')->where('status','1')->select()->get();
        @endphp
        @foreach($dataCategory as $item)
        <li ><a style="font-family: normal" href="{{route('frontend.category',['id'=>$item->id])}}">{{$item->name}}</a></li>
        @endforeach
   <!--  <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Mobile</a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Android</a></li>
            <li><a href="#">Samsung</a></li>
            <li><a href="#">Nokia</a></li>
            <li><a href="#">Walton Mobile</a></li>
            <li><a href="#">Sympony</a></li>
          </ul>
        </li>
        <li class="dropdown"><a href="#">Laptops</a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Android</a></li>
            <li><a href="#">Samsung</a></li>
            <li><a href="#">Nokia</a></li>
            <li><a href="#">Walton Mobile</a></li>
            <li><a href="#">Sympony</a></li>
          </ul>
        </li>
        <li><a href="#">Tablets</a></li>
        <li><a href="pages/contact.html">Contact Us</a></li>
        <li><a href="pages/404.html">404 Page</a></li>  -->
      </ul>
        <form class="navbar-form navbar-right" action="{{route('frontend.search')}}" method="GET" role="search">
          <div class="form-group" >
          <input type="text" class="form-control" name="key" value="{{isset($search)?$search:''}}" placeholder="Search title post">
          </div>
          <button type="submit" class="btn btn-default btn-submit">Search</button>
        </form>
    </div>
  </nav>
