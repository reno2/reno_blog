<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
//use Intervention\Image\Facades\Image;
use Intervention\Image\Facades\Image;


use Illuminate\Http\File;
//use App\Upload;
class ImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

		/**
		 * Store a newly created resource in storage.
		 *
		 * @param  \Illuminate\Http\Request  $request
		 * @return \Illuminate\Http\Response
		 */
    public function add(Request $request)
    {

		    $filename = time().$request->file('image')->getClientOriginalName();

				$tt = Storage::putFileAs( 'avatars', $request->file('image'), $filename);
		   // $path = storage_path($tt);

		    $path = 'public/images/' .  $filename;

		    $request->file('image')->storeAs('public/img', $filename);
		    $thumbnailpath = public_path('storage/img/'.$filename);
		    $image = Image::make($request->file('image'))->fit(300, 300);

		  $bb =  Storage::put($path, (string) $image->encode());
		    if($bb)
				{
						$url = Storage::url($path);
				    return response()->json([
						    'image' => 	 $url
				    ]);
				}

		    //$image->save(storage_path($thumbnailpath));

//		    $img =  Image::make($thumbnailpath)
//				    ->resize(150, 300);
//		    $img->save(storage_path($thumbnailpath));

				$hh ='';
//		    $filename = time().$request->file('image')->getClientOriginalName();
//		    $requestImage = request()->file('image');
//
//		    $uploadedFile = $request->file('image');
//		    $filename = time().$uploadedFile->getClientOriginalName();
//
//		    $path = Storage::putFileAs(
//				    'files', $request->file('image'), $filename
//		    );
//		    if($path)
//				{
//						$url = Storage::url($path);
//				    return response()->json([
//						    'image' => 	 $url
//				    ]);
//				}
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
