@extends('admin.layouts.app_admin')


@section('content')
    <div class="container">
        @component('admin.components.breadcrumb')
            @slot('title') Редактирование пользователя @endslot
            @slot('parent') Главная @endslot
            @slot('active') пользователь {{$user->name}} @endslot
        @endcomponent
        <div class="row">
            <form сlass="form-horizontal" action="{{route('user_managment.user.update', $user)}}" method="post">
                {{method_field('PUT')}}
                {{csrf_field()}}
                {{-- Form include--}}

                @include('user_managment.users.partials.form');
                <input type="hidden" name="modified_by" value="{{Auth::id()}}">

            </form>
        </div>
    </div>


@endsection