<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
{{--    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"></script>--}}
{{--    <link href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" rel="stylesheet">--}}


    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>
    <meta name="description" content="@yield('meta_description')">
    <meta name="title" content="@yield('meta_title')">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/frontend.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app" class="front-end">

        @include('layouts.header')
        @yield('page_title')
        @yield('content')
    </div>

    <!-- Scripts -->

    <script src="{{ asset('js/app.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script>
    <script>
        {{--let route = "{{url('/autocomplete')}}"--}}
        {{--$('#search').typeahead({--}}
        {{--    source: function(q, process){--}}
        {{--        return $.get(route, {q:q}, function(data){--}}
        {{--            console.log(data);--}}
        {{--            return process.data;--}}
        {{--        })--}}
        {{--    }--}}
        {{--})--}}
    </script>
</body>

</html>
