@extends('admin.layout.master', ['title'=>"List News"])
@section('content')
<div class="animated fadeIn">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title"> <a href="{{route('news.create')}}">Add News</a></strong>
                </div>
                <div class="card-body">
                    <table class="table">
                          <thead>
                            <tr>
                              <th scope="col">#Id</th>
                              <th scope="col">Title</th>
                              <th scope="col">Lead</th>
                              <th scope="col">Status</th>
                              <th scope="col">Views</th>
                              <th scope="col">Control</th>
                            </tr>
                          </thead>
                          <tbody>
                            @foreach($news as $item)
                            <tr>
                              <th scope="row">{{$item->id}}</th>
                              <td>{{$item->title}}</td>
                              <td>{{$item->lead}}</td>
                              <td>{{$item->status}}</td>
                              <td>{{$item->view}}</td>
                              <td> <a href="{{route('news.update',['id'=>$item->id])}}">Update</a>  | <a href="{{route('news.delete',['id'=>$item->id])}}">Delete</a></td>
                          </tr>
                          @endforeach
                      </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div><!-- .animated -->
@stop
