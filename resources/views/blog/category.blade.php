@extends('layouts.app')

@section('title')

    @if(MetaTag::tag('title'))
        {!! MetaTag::tag('title') !!}
    @else
        {{$category->title ?? ''}}
    @endif
@endsection



@section('content')
    @component('chunks.page_title')
        @slot('title') {!! MetaTag::tag('title') !!}@endslot
    @endcomponent
{{--    @include('chunks.beadcrumbs')--}}
    <div class="container">
        <div class="row">
          @if(isset($tag))
            {{ Breadcrumbs::render('tag', $tag) }}
            @else
                {{ Breadcrumbs::render('category', $category) }}
            @endif
        </div>
    </div>

    <div class="container">

        <div class="row">
        @forelse($articles as $article)


                @include('chunks.listItem', ['article' => $article])

            @empty
            <h2 class="text-center">Пусто</h2>
        @endforelse
        </div>
        {{$articles->links()}}
    </div>

@endsection
