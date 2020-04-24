@extends('admin.layouts.app_admin')


@section('content')

    <div class="container">
        @component('admin.components.breadcrumb')
            @slot('title') Список Пользователей @endslot
            @slot('parent') Главная @endslot
            @slot('active') Пользователи @endslot
        @endcomponent

        <hr>
        <a href="{{route('user_managment.user.create')}}" class="btn btn-primary pull-right"><i class="far fa-plus-square"></i> Создать пользователя</a>
        <table class="table table-striped">
            <thead>
            <th>Имя</th>
            <th>Email</th>
            <th class="text-right">Действия</th>

            </thead>
            <tbody>
            @forelse($users as $user)
                <tr>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                    <td>
                        <form onsubmit="if(confirm('Удалить?')){return true} else {return false}" action="{{route('user_managment.user.destroy', $user)}}" method="post">
                            {{method_field("DELETE")}}
                            {{csrf_field()}}
                            <button type="submit" class="btn btn-default"><i class="fas fa-trash-alt"></i></button>
                            <a class="btn btn-default" href="{{route('user_managment.user.edit', $user)}}"><i class="fas fa-edit"></i></a>
                        </form>

                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="3" class="text-center"><h2>Данные отсутствуют</h2></td>
                </tr>
            @endforelse

            </tbody>
            <tfoot>
            <tr>
                <td colspan="3">
                    <ul class="pagination pull-right">
                        {{$users->links()}}
                    </ul>
                </td>
            </tr>
            </tfoot>

        </table>

    </div>

@endsection