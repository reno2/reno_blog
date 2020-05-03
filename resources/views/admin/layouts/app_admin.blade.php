<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"></script>
    <link href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" rel="stylesheet">
    <title>{{ config('app.name', 'Laravel') }}</title>



    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
<div id="app" class="admin">

    <div class="d-flex justify-content-start admin-apage">
        <div class="apage">
            <div class="sidebar">
                @include('admin.components.sidebar2')
            </div>
        </div>
        <div class="apage marea flex-fill">
            @include('admin.components.top')
            <div class="container-fluid pl-5 pr-5">
             @yield('content')
            </div>
        </div>
    </div>
</div>

<script src="{{ asset('js/app.js') }}"></script>
@yield('page-script')

<!-- Scripts -->
<script src="{{asset('js/ckeditor/ckeditor.js')}}"></script>
<link href="{{ asset('js/ckeditor/plugins/codesnippet/lib/highlight/styles/default.css') }}" rel="stylesheet">
<script src="{{ asset('js/ckeditor/plugins/codesnippet/lib/highlight/highlight.pack.js') }}"></script>

<script>
    setTimeout(function(){
        var konten = document.getElementById("description");
        CKEDITOR.replace(konten,{
            language:'en-gb'
        });
        CKEDITOR.config.allowedContent = true;
    }, 400)
</script>


<script>hljs.initHighlightingOnLoad();</script>

<style>img.img-fluid{width: 100%;}</style>

</body>
</html>
