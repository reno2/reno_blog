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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-3">
        <div class="container">

            <a class="navbar-brand" href="{{ url('/') }}">
                На витрину
            </a>
                <!-- Collapsed Hamburger -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
                <!-- Branding Image -->



            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav mr-auto">

                    <li class="nav-item dropdown">
                        <a href="{{route('admin.index')}}" class="nav-link" >Панель состояния</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Блог</a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{route('admin.category.index')}}">Категории</a>
                            <a class="dropdown-item" href="{{route('admin.article.index')}}">Материалы</a>
                            <a class="dropdown-item" href="{{route('admin.tags.index')}}">Теги</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a href="{{route('user_managment.user.index')}}" class="nav-link" >Пользователи</a>
                    </li>


                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Authentication Links -->
                    @guest
                        <li><a href="{{ route('login') }}">Login</a></li>
                        <li><a href="{{ route('register') }}">Register</a></li>
                    @else
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" v-pre>
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <ul class="dropdown-menu">
                                <li>
                                    <a href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        Logout
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        {{ csrf_field() }}
                                    </form>
                                </li>
                            </ul>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>

    @yield('content')
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
