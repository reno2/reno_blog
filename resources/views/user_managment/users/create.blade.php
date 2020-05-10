@extends('admin.layouts.app_admin')


@section('content')

        @component('admin.components.breadcrumb')
            @slot('title') Создание пользователя @endslot
            @slot('parents') Главная @endslot
            @slot('active') Пользователь @endslot
        @endcomponent
        <div class="row">
            <div class="col-md-9">
                <form сlass="form-horizontal" id="aform" action="{{route('user_managment.user.store')}}" method="post">
                    {{csrf_field()}}
                    {{-- Form include--}}

                    @include('user_managment.users.partials.form')


                </form>
            </div>
        </div>


@endsection

