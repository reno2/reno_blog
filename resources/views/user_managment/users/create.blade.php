@extends('admin.layouts.app_admin')


@section('content')
    <div class="container">
        @component('admin.components.breadcrumb')
            @slot('title') Создание пользователя @endslot
            @slot('parent') Главная @endslot
            @slot('active') Пользователь @endslot
        @endcomponent
        <div class="row">
            <form сlass="form-horizontal" action="{{route('user_managment.user.store')}}" method="post">
                {{csrf_field()}}
                {{-- Form include--}}

                @include('user_managment.users.partials.form');


            </form>
        </div>
    </div>


@endsection