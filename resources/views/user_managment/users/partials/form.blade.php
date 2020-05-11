

@if($errors->any())
        <div  class="alert alert-danger" role="alert">
            <ul>
        @foreach($errors->all() as $error)
            <li>
             {{$error}}
            </li>
        @endforeach
            </ul>
        </div>
@endif



<div class="form-group">
    <label for="title">Имя</label>
    <input type="text" name="name" class="form-control" id="name" value="@if(old('name')){{old('name')}}@else{{$user->name ?? ''}}@endif">
</div>

<div class="form-group">
    <label for="title">Email</label>
    <input type="email" name="email" class="form-control" id="email" value="@if(old('email')){{old('email')}}@else{{$user->email ?? ''}}@endif">
</div>

<div class="form-group">
    <label for="title">Пароль</label>
    <input type="text" name="password" class="form-control" id="password" value="{{$user->password ?? ''}}">
</div>

<div class="form-group">
    <label for="title">подтверждение пароля</label>
    <input type="text" name="password_confirmation" class="form-control" id="password" value="{{$user->password_confirmation ?? ''}}">
</div>


<div class="form-group">
    <label for="role">Роль пользователя</label>
    <select name="role" class="form-control" id="role">
      @foreach($roles as $role)
            @if(isset($user->id) )

                    <option @if($role->id == $user->roles->first()['id']) selected="selected" @endif value="{{ $role->id }}">{{$role->name}}</option>

            @else
                <option value="{{ $role->id }}">{{$role->name}}</option>
            @endif

        @endforeach
    </select>
</div>





<hr>
<input type="submit" class="btn btn-block btn-primary" value="Добавить пользователя">
