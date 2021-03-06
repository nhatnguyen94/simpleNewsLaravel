<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> {{ isset($title)?$title:'Home' }}| Admin</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="{{url('/admin')}}/assets/css/normalize.css">
    <link rel="stylesheet" href="{{url('/admin')}}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{url('/admin')}}/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{url('/admin')}}/assets/css/themify-icons.css">
    <link rel="stylesheet" href="{{url('/admin')}}/assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="{{url('/admin')}}/assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="{{url('/admin')}}/assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="{{url('/admin')}}/assets/scss/style.css">
    <link href="{{url('/admin')}}/assets/css/lib/vector-map/jqvmap.min.css" rel="stylesheet">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    @yield('header')

</head>
<body>


@include('admin.layout.include.header')

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>{{ isset($title)?$title:'Home' }}</h1>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            @yield('content')
        </div> <!-- .content -->
    </div><!-- /#right-panel -->

    <!-- Right Panel -->

    <script src="{{url('/admin')}}/assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    <script src="{{url('/admin')}}/assets/js/plugins.js"></script>
    <script src="{{url('/admin')}}/assets/js/main.js"></script>

    @yield('script')


</body>
</html>
