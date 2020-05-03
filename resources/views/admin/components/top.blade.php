<div class="marea-top mtop d-flex">
    <div class="search mtop-el mr-auto w-100">
        <search-component place="backend"></search-component>
    </div>
    <div class="mtop-el actions">
        <div class="actions__wrap act-item d-flex">
            <div class="actions__el act-item__wimg">
                <img class="act-item__img" src="{{asset('/images/user.png')}}">
            </div>
            <div class="actions__el act-item__name">
                <a class="actions__link">
                    <span>{{AUTH::getUser()->name}}</span>
                </a>
            </div>
        </div>
    </div>
</div>