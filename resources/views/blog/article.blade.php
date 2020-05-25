@extends('layouts.app')

@section('title')

    @if(MetaTag::tag('title'))
        {!! MetaTag::tag('title') !!}
    @endif
@endsection

@section('content')


    @component('chunks.page_title')
        @slot('title') {!! MetaTag::tag('title') !!}@endslot
    @endcomponent

    <div class="article">
        <div class="container">
            <div class="row">
                {{ Breadcrumbs::render('article', $article->categories->first(), $article) }}
            </div>
        </div>

        <div class="container">

        <div class="hero-text__el hero-item__last hero-text">

            <div class="hero-text__words">
                <div class="hero-text__word">
                    <div class="hero-text__first hero-text_white">bitrix</div>
                    <div class="hero-text__first hero-text_white">javascr5ipt</div>
                </div>
                <div class="hero-text__word">
                    <div class="hero-text__first hero-text_white">vue</div>
                    <div class="hero-text__first hero-text_white">PHP</div>
                </div>
            
            </div>
           
        </div>



            <div class="row ">
{{--                <div class="col">--}}

                    <div class="article__inner">
                        @include('chunks.check_admin', ['article'=>$article])

                        <div class="article__content">
                            <p>{!! $article->description !!}</p>
                        </div>
                        <hr>
                        <div class="article__footer a-footer">
                            <div class="category a-footer__el">
                                Категория: <a
                                        href="{{route('category', $article->categories->pluck('slug')->first())}}">{{$article->categories->pluck('title')->first()}}</a>
                            </div>
                            <div class="tags d-flex a-footer__el">

                                @if($article->tags()->count())
                                    <div class="tags__title mr-4">теги:</div>
                                    <div class="tags__el">
                                        @foreach($article->tags()->get()->toArray() as $tag)
                                            <a class="tags__item" href="{{route('tag', $tag['name'])}}">{{$tag['name']}}</a>

                                        @endforeach
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>

{{--                </div>--}}
            </div>

        </div>
    </div>
@endsection
