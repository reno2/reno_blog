@extends('layouts.app')

@section('title')
    {{$category->title}}

@endsection

@section('content')

    <div class="container">

        <div class="row">
        @forelse($articles as $article)


                <div class="my-3 mx-2 card" style="width: 18rem;">
                    <img src="{{$category->image}}" class="img-fluid card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><a href="{{route('article', $article->slug)}}">{{$article->title}}</a></h5>
                        <p class="card-text">{!! $article->description_short !!}</p>

                    </div>
                </div>

{{--                <div class="col-sm-12">--}}
{{--                    <h2><a href="{{route('article', $article->slug)}}">{{$article->title}}</a></h2>--}}
{{--                    <p>{!! $article->description_short !!}</p>--}}
{{--                </div>--}}

            @empty
            <h2 class="text-center">Пусто</h2>
        @endforelse
        </div>
        {{$articles->links()}}
    </div>

@endsection
