@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
{{--        {{dd($articles)}}--}}
        @foreach($articles as $article)
        @include('chunks.listItem', ['article' => $article])
        @endforeach
    </div>
</div>


@endsection
