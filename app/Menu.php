<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Menu extends Model
{
		protected $fillable = ['title', 'slug', 'image', 'parent_id', 'published', 'created_by'];
		// Mutators
		public function setSlugAttribute($value){
				$this->attributes['slug'] = Str::slug(mb_substr($this->title, 0, 40) . '-' . Carbon::now()->format('dmyHs'), '-');
		}

		public function children(){
				return $this->hasMany(self::class, 'parent_id');
		}

		//plymorphe
//		public function articles(){
//				return $this->morphedByMany('App\Article', 'categoryable');
//		}

		public function scopeLastCategories($query, $count){
				return $query->orderBy('created_at', 'desc')->take($count)->get();
		}
}
