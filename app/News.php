<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class, 'users_id');
    }
    public function category()
    {
        return $this->belongsTo(CategoryNews::class, 'category_news_id');
    }
    public function comentable()
    {
        return $this->morphMany('App\Comment', 'commentable');
    }
}
