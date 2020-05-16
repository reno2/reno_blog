<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=no">
{{--    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"></script>--}}
{{--    <link href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" rel="stylesheet">--}}

<!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">

    <!-- icons -->
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

    <!-- gsap -->
{{--    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.2/TweenMax.min.js"></script>--}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.2.6/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.2.6/EasePack.min.js"></script>


    <!-- AnimeJS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

    <!-- JQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.min.js"></script>



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
        <div class="app__content">
            @include('layouts.header')

            @yield('page_title')
            @yield('content')
        </div>
        <div class="app__footer">
            @include('layouts.footer')
        </div>
    </div>
    


    <!-- Scripts -->

    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/frontend.js') }}"></script>
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
