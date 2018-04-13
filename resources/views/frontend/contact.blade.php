@extends('frontend.layout.master_full_content', ['title'=>"Contact"])
@section('content')
@if ( session()->has('status') )
<div class="alert alert-{{ session('status') }} alert-dismissible fade in" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">×</span>
  </button>
  {{session('status')=="success"?"Thank you for your comments ! Wish you a good day.":"Sorry, please try again !"}}
</div>
@endif
<div class="left_content">
  <div class="contact_area">
    <h2>Contact Us</h2>
    <p></p>
    <form action="{{route('frontend.contact')}}" method="POST" class="contact_form">
      <input type="hidden" name="_token" value="{{csrf_token()}}">
      <input class="form-control" type="text" name="name" placeholder="Name*">
      <input class="form-control" type="email" name="email" placeholder="Email*">
      <textarea class="form-control" cols="30" rows="10" name="content" placeholder="Message*"></textarea>
      <input type="submit" value="Send Message">
    </form>
  </div>
</div>
@stop
