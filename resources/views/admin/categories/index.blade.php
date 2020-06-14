@extends('admin.layouts.app_admin')


@section('content')


    @component('admin.components.breadcrumb')
        @slot('title') Список категорий @endslot
        @slot('parents') Главная @endslot
        @slot('active') Категории @endslot
    @endcomponent

        <hr>
        <a href="{{route('admin.category.create')}}" class="btn btn-primary pull-right"><i class="fas fa-plus-square"></i> Создать категорию</a>
        <table class="table table-striped">
            <thead>
            <th>Наименование</th>
            <th>Публикация</th>
            <th>Slug</th>
            <th>Уровень</th>

            <th class="text-right">Действия</th>

            </thead>
            <tbody>
            @forelse($categories as $category)

                <tr>
                    <td>{{$category->title}}</td>
                    <td>{{$category->published}}</td>
                    <td>{{$category->slug}}</td>
                    <td>{{$category->parent_id}}</td>
                    <td>
                        <form onsubmit="if(confirm('Удалить?')){return true} else {return false}" action="{{route('admin.category.destroy', $category)}}" method="post">
                            <input type="hidden" name="_method" value="DELETE">
                            {{csrf_field()}}
                            <button type="submit" class="btn btn-default"><i class="fas fa-trash-alt"></i></button>
                            <a class="btn btn-default" href="{{route('admin.category.edit', $category)}}"><i class="fas fa-edit"></i></a>
                            <a class="btn btn-default" href="{{route('admin.category.show', $category)}}"><i class="fas fa-share"></i></a>
                        
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
                        {{$categories->links()}}
                    </ul>
                </td>
            </tr>
            </tfoot>

        </table>



@endsection