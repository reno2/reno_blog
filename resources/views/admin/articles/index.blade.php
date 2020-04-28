@extends('admin.layouts.app_admin')


@section('content')

    <div class="container">
        @component('admin.components.breadcrumb')
            @slot('title') Список статьи @endslot
            @slot('parents') Главная @endslot
            @slot('active') Статьи @endslot
        @endcomponent

        <hr>
        <a href="{{route('admin.article.create')}}" class="mb-3 btn btn-primary pull-right"><i class="far fa-plus-square"></i> Создать материал</a>
        <table class="table table-striped">
            <thead>
            <th>Наименование</th>
            <th>Публикация</th>
            <th>Категории</th>
            <th>На главной</th>
            <th class="text-right">Действия</th>

            </thead>
            <tbody>
            @forelse($articles as $article)
                <tr>
                    <td>{{$article->title}}</td>
                    <td>{{$article->published}}</td>
                    <td>{{$article->categories->pluck('title')->first()}}</td>
                    <td>{{($article->on_front) ? "Да" : "Нет"}}</td>
                    <td>
                        <form onsubmit="if(confirm('Удалить?')){return true} else {return false}" action="{{route('admin.article.destroy', $article)}}" method="post">
                            <input type="hidden" name="_method" value="DELETE">
                            {{csrf_field()}}
                            <button type="submit" class="btn btn-default"><i class="fas fa-trash-alt"></i></button>
                            <a class="btn btn-default" href="{{route('admin.article.edit', $article)}}"><i class="fas fa-edit"></i></a>
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
                        {{$articles->links()}}
                    </ul>
                </td>
            </tr>
            </tfoot>

        </table>

    </div>

@endsection