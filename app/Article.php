<?php

namespace App;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{

		// Mutators
		public function setSlugAttribute($value){
				$this->attributes['slug'] = Str::slug(mb_substr($this->title, 0, 40) . '-' . Carbon::now()->format('dmyHi'), '-');
		}

		protected $fillable = ['title', 'slug', 'description_short', 'description','image','image_show', 'meta_title', 'meta_description', 'viewed' ,'published', 'created_by', 'modifierd_by'];
		//plymorphe
		public function categories(){
				return $this->morphToMany('App\Category', 'categoryable');
		}
}
