<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryNews extends Model
{
    public function news()
    {
        return $this->hasMany('App\News');
    }
}
