<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CategoryNews extends Model
{
    public function news()
    {
        return $this->hasMany('App\Models\News')->orderBy('created_at', 'DESC');
    }
}
