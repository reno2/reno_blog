@extends('layouts.app')

@section('title')
    {{$article->title}}

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
