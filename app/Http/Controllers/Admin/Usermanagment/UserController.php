<?php

namespace App\Http\Controllers\Admin\Usermanagment;

use App\User;
use App\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('user_managment.users.index', [
        		'users' => User::paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
				$roles = Role::all();
        return view('user_managment.users.create', [
        		'user' => [],
		        'roles' => $roles
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		    $validator = $request->validate([
				    'name' => 'required|string|max:255',
				    'email' => 'required|string|email|max:255|unique:users',
				    'password' => 'required|string|min:6|confirmed',
		    ]);
		    $user = User::create([
		    	  	'name' => $request['name'],
		    	  	'email' => $request['email'],
		    	  	'password' => bcrypt($request['password']),
		    ]);
		    $user->roles()->attach($request->input('role'));
		    return redirect()->route('user_managment.user.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
		    $roles = Role::all();
        return view('user_managment.users.edit', ['user'=>$user, 'roles' => $roles]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
		    $user->roles()->detach();




    		//dd($request);
		    $validator = $request->validate([
				    'name' => 'required|string|max:255',

				    'email' => [
						    'required', 'string', 'email', 'max:255', \Illuminate\Validation\Rule::unique('users')->ignore($user->id),

				    ],
				    'password' => 'nullable|string|min:6|confirmed',
		    ]);
		    $user->name = $request['name'];
		    $user->email = $request['email'];
		    $request['password'] == null ?: $user->password = bcrypt($request['password']);
		    $user->save();

		    if($request->input('role')):
				    $user->roles()->attach($request->input('role'));
		    endif;


		    return redirect()->route('user_managment.user.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();
		    return redirect()->route('user_managment.user.index');
    }
}
