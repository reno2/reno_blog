@extends('layouts.app')

@section('title')

    @if(MetaTag::tag('title'))
        {!! MetaTag::tag('title') !!}
    @endif
@endsection

@section('content')

    <div class="container">



            <div class="row">
                <div class="col-sm-12">
                    <h2>{{$article->title}}</h2>
                    <p>{!! $article->description !!}</p>
                </div>
            </div>




    </div>

@endsection
