<?php

namespace App\Http\Middleware;

use Closure;

class CheckAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
    		$collections = $request->user()->roles->pluck('name');
    		if($collections && $collections->contains('admin'))
		    {

				    return $next($request);
		    }else{
        		return redirect('/home');
    		}
    }
}
