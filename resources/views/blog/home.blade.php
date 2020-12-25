@extends('layouts.app')

@section('content')
    @include('layouts.hero')
    @include('layouts.front-info')
    <div class="section section-tags">
        <div class="container">
            <div class="section__title">Теги</div>
            <div class="row">
                @widget('tags', ['tpl'=>'Widgets::frontTagsView'])
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            @php
                // $p = \App\SBlog\Core\BlogApp::get_Instance()->getProperty('admin_email');
            @endphp

            {{--        {{dd($articles)}}--}}
            @foreach($articles as $article)
                @include('chunks.listItem', ['article' => $article])
            @endforeach
        </div>
    </div>


@endsection
