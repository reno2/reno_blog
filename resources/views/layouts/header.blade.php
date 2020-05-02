




<nav class="sticky-top navbar navbar-expand-lg navbar-light bg-light">
    <div class="container front-end">

        <a class="navbar-brand" href="{{route('front')}}">
            <img src="{{ asset('images/logo_.png')}}" height="60">
            <span class="navbar__text">
                <span>заметки</span>
                <span>програмиста</span>
            </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="dmenu collapse navbar-collapse" id="navbarSupportedContent">

            <!-- Left Side Of Navbar -->
            <ul class="dmenu__el del__links main-menu navbar-nav">
               @include('layouts.top_menu', ['categories' => $categories])
            </ul>

            <search-component ></search-component>
            <!-- Right Side Of Navbar -->
            <ul class="dmenu__el del__user nav navbar-nav navbar-right justify-content-around">
                <!-- Authentication Links -->
                @guest
                    <li class="mx-2"><a href="{{ route('login') }}">Login</a></li>
                    <li class="mx-2"><a href="{{ route('register') }}">Register</a></li>
                @else
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">



                                <a class="dropdown-item"href="{{route('admin.index')}}">Админ панель</a>

                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    Logout
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    {{ csrf_field() }}
                                </form>


                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>
