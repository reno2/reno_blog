
{{--@foreach($attrs as $attr_id => $value)--}}
{{--    @foreach($value as $d => $e)--}}
{{--        {{$e}}--}}
{{--    @endforeach--}}
{{--@endforeach--}}
@if($tags)
    <div class="menu classic">
        <ul id="nav" class="tags big">
            @foreach($tags as $item)
                <a class="tags__item" href="{{route('tag', $item['name'])}}">{{$item['name']}}</a>
            @endforeach
        </ul>
    </div>
@endif
