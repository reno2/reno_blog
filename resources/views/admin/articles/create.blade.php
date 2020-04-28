@extends('admin.layouts.app_admin')


@section('content')
    <div class="container">
        @php $parents = [];
                $parents[] = ['link' => route('admin.index'), 'title' => 'Главная'];
                $parents[] = ['link' => route('admin.article.index'), 'title' => 'Материалы'];
        @endphp
        @component('admin.components.breadcrumb', ['parents'=>$parents])
            @slot('title') Создание материала @endslot
{{--            @slot('parent') Главная @endslot--}}
            @slot('active') Материал @endslot
        @endcomponent
        <div class="row">
            <form сlass="form-horizontal" action="{{route('admin.article.store')}}" method="post">
                {{csrf_field()}}
                {{-- Form include--}}

                @include('admin.articles.partials.form');
                <input type="hidden" name="created_by" value="{{Auth::id()}}">

            </form>
        </div>
    </div>


@endsection