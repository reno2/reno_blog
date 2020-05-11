@if(Auth::user())
	@if(Auth::user()->roles()->get()->pluck('name')->contains('admin'))
        <a style="display: block; text-align: right;" class="article__edit pull-right" href="{{route('admin.article.edit', $article)}}">Изменить</a>
    @endif	
@endif	