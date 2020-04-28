@extends('admin.layouts.app_admin')


@section('content')
    <div class="container">
        @php $parents = [];
                $parents[] = ['link' => route('admin.index'), 'title' => 'Главная'];
                $parents[] = ['link' => route('admin.article.index'), 'title' => 'Категории'];
        @endphp
        @component('admin.components.breadcrumb', ['parents'=>$parents])
            @slot('title') Редактирование материала @endslot
{{--            @slot('parents') Главная @endslot--}}
            @slot('active') редактирование @endslot
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