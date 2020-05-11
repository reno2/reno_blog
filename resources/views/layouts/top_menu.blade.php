@foreach($categories as $category)
    @if($category->articles->count())
        @if($category->children->where('published', 1)->count())

           <li class="@if(request()->segment(3) == $category->slug) active @endif nav-item dropdown">
               <a href="{{url("/blog/category/$category->slug")}}" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{$category->title}}</a>
               <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    @include('layouts.top_menu', ['categories' => $category->children])
               </ul>


        @else
            <li class="@if(request()->segment(3) == $category->slug) active @endif nav-item">
                <a class="nav-link"  href="{{url("/blog/category/$category->slug")}}">{{$category->title}}</a>
        @endif
            </li>

    @endif



@endforeach

