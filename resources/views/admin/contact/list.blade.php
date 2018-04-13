@extends('admin.layout.master', ['title'=>"List Contact"])
@section('content')
<div class="animated fadeIn">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title"> <a href="{{route('categorynews.create')}}">Add News</a></strong>
                </div>
                <div class="card-body">
                    <table id="datalist" class="table table-striped table-bordered" style="width:100%">
                          <thead>
                            <tr>
                              <th scope="col">#Id</th>
                              <th scope="col">Name</th>
                              <th scope="col">Email</th>
                              <th scope="col">Content</th>
                            </tr>
                          </thead>
                          <tbody>
                            @foreach($data as $item)
                            <tr>
                              <td scope="row">{{$item->id}}</td>
                              <td>{{$item->name}}</td>
                              <td>{{$item->email}}</td>
                              <td>{{$item->content}}</td>
                          </tr>
                          @endforeach
                      </tbody>
                       <tfoot>
                          <tr>
                              <th scope="col">#Id</th>
                              <th scope="col">Name</th>
                              <th scope="col">Email</th>
                              <th scope="col">Content</th>
                          </tr>
                      </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div><!-- .animated -->
@stop
@section('header')
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
@stop
@section('script')
<script>
$(document).ready(function() {
    $('#datalist').DataTable();
} );
</script>
@stop
