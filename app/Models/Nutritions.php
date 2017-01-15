<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Nutritions extends Model
{

    public function scopeOfOriginalType(Builder $query) {
        return $query->where('id', 1);
    }

    public function nutlist()
    {
//        $test = 2;
        return $this->hasMany(Nutritionlist::class);
//        return $this->hasMany(Nutritionlist::class)->where('id',$test);
    }
}
