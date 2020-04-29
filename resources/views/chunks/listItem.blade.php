
<div class="my-3 mx-2 card" style="width: 18rem;">



      <img src="{{$article->categories->pluck('image')->first()}}">
      <div class="card-body">
         <h5 class="card-title"><a href="{{route('article', $article->slug)}}">{{$article->title}}</a></h5>
          <div class="cart-category">
              <a href="/blog/category/{{$article->categories->pluck('slug')->first()}}">
                  {{$article->categories->pluck('title')->first()}}
              </a>
          </div>
         <p class="card-text">{!! $article->description_short !!}</p>

   </div>
</div>


