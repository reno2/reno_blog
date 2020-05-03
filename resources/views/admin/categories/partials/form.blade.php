<div class="form-group">
    <label for="published">Статус</label>
    <select name="published" class="form-control" id="published">
        @if(isset($category->id))
            <option value="0" @if($category->published == 0) selected="" @endif>Не опубликовано</option>
            <option value="1" @if($category->published == 1) selected="" @endif>Опубликовано</option>
        @else
            <option value="0">Не опубликовано</option>
            <option value="1">Опубликовано</option>
        @endif


    </select>
</div>

<div class="form-group">
    <label for="slug">Slug</label>
    <input type="text" name="slug" class="form-control" id="slug" value="{{$category->slug or ''}}" readonly="">
</div>


<div class="form-group">
    <label for="title">Название</label>
    <input type="text" name="title" class="form-control" id="name" value="{{$category->title or ''}}">
</div>

<div class="form-group">
    <label for="categories">Родительская категория</label>
    <select name="parent_id" class="form-control" id="categories">
        <option value="0">-- без родителей</option>

        @include('admin.categories.partials.categories', ['categories' => $categories]);



    </select>
</div>

<hr>
<input type="submit" class="btn btn-block btn-primary" value="@if(isset($category->id)) Изменить @else Добавить @endif категорию">

