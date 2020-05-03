
<div class="my-3 mx-2 card" style="width: 18rem;">



      <img src="{{$article->categories->pluck('image')->first()}}">
      <div class="card-body">
         <h5 class="card-title"><a href="{{route('article', $article->slug)}}">{{$article->title}}</a></h5>
          <div class="cart-category">
              <a href="/blog/category/{{$article->categories->pluck('slug')->first()}}">
                  {{$article->categories->pluck('title')->first()}}
              </a>
          </div>

         <p class="card-text f-gilroy">{!! $article->description_short !!}</p>
          <div class="card-footer bg-transparent border-success">
              <div class="tags">

                  @foreach($article->tags()->get()->toArray() as $tag)
                      <span class="f-gilroy badge badge-secondary">{{$tag['name']}}</span>
                  @endforeach

              </div>
          </div>

   </div>
</div>


