@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">

            <div class="mt-5 col info info_good">
                По запросу <i>"{{$search}}"</i>  Найдено <strong>{{count($res)}}</strong> записи
            </div>
        </div>
        <div class="row">
{{--            {{dd($res)}}--}}

            @foreach($res as $article)
                @include('chunks.listItem', ['article' => $article])
            @endforeach
        </div>
    </div>



@endsection
