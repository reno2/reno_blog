<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use Carbon\Carbon;

class Category extends Model
{
    //Mass assigned

		protected $fillable = ['title', 'slug', 'image', 'parent_id', 'published', 'created_by', 'modifierd_by'];
		// Mutators
		public function setSlugAttribute($value){
				$this->attributes['slug'] = Str::slug(mb_substr($this->title, 0, 40) . '-' . Carbon::now()->format('dmyHs'), '-');
		}

		public function children(){
				return $this->hasMany(self::class, 'parent_id');
		}

		//plymorphe
		public function articles(){
				return $this->morphedByMany('App\Article', 'categoryable');
		}

		public function scopeLastCategories($query, $count){
			return $query->orderBy('created_at', 'desc')->take($count)->get();
		}

}
