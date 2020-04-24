@extends('admin.layouts.app_admin')


@section('content')
    <div class="container">
        @component('admin.components.breadcrumb')
            @slot('title') Редактирование материала @endslot
            @slot('parent') Главная @endslot
            @slot('active') Категории @endslot
        @endcomponent
        <div class="row">
            <form сlass="form-horizontal" action="{{route('admin.article.update', $article)}}" method="post">
                <input type="hidden" name="_method" value="put">
                {{csrf_field()}}
                {{-- Form include--}}

                @include('admin.articles.partials.form');
                <input type="hidden" name="modified_by" value="{{Auth::id()}}">

            </form>
        </div>
    </div>


@endsection