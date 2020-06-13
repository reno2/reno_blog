@extends('admin.layouts.app_admin')


@section('content')

    @php $parents = [];
                $parents[] = ['link' => route('admin.index'), 'title' => 'Главная'];
                $parents[] = ['link' => route('admin.category.index'), 'title' => 'Категории'];
    @endphp

    @component('admin.components.breadcrumb', ['parents'=>$parents])
        @slot('title') @if(isset($title))  {{$title}} @else Список статьи категории @endif @endslot

        @slot('active') {{$category_name}}  @endslot
    @endcomponent

    <hr>
    <a href="{{route('admin.article.create')}}" class="mb-3 btn btn-primary float-md-left"><i class="far fa-plus-square"></i> Создать материал</a>

    <div class="btn-group float-md-right" role="group" aria-label="Basic example">
        <a href="{{route('admin.article.index', ['sort' => 'asc'])}}" type="button" class="btn btn-secondary"><i class="fas fa-sort-amount-down-alt"></i></a>
        <a href="{{route('admin.article.index', ['sort' => 'desc'])}}" type="button" class="btn btn-secondary"><i class="fas fa-sort-amount-down"></i></a>
        <a href="{{route('admin.article.index')}}" type="button" class="btn btn-secondary"><i class="fas fa-sort-numeric-down"></i> Дате добавления </a>
    </div>



    <table class="table table-striped">
        <thead>
        <th>#</th>
        <th>Наименование</th>
        <th>Публикация</th>
        <th>Категории</th>
        <th>На главной</th>
        <th>Сортировка</th>
        <th>Дата создания</th>
        <th class="text-right">Действия</th>

        </thead>
        <tbody>

        @forelse($articles as $key => $article)
            <tr>
                <td>{{$article->id}}</td>
                <td>{{$article->title}}</td>
                <td>{{$article->published}}</td>
                <td>{{$article->categories->pluck('title')->first()}}</td>
                <td>{{($article->on_front) ? "Да" : "Нет"}}</td>
                <td>{{$article->sort}}</td>
                <td>{{Carbon\Carbon::parse($article->created_at)->format('d.m.y H:i')}}</td>
                <td>
                    <form onsubmit="if(confirm('Удалить?')){return true} else {return false}" action="{{route('admin.article.destroy', $article)}}" method="post">
                        <input type="hidden" name="_method" value="DELETE">
                        {{csrf_field()}}
                        <button type="submit" class="btn btn-default"><i class="fas fa-trash-alt"></i></button>
                        <a class="btn btn-default" href="{{route('admin.article.edit', $article)}}"><i class="fas fa-edit"></i></a>
                        <a target="_blank" class="btn btn-default" href="{{route('article', $article->slug)}}"><i class="fas fa-share"></i></a>
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



@endsection