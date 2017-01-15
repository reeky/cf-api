<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Nutritionlist extends Model
{
    protected $fillable = ['nutritions_id','item_taken','date','phone','pin'];

    public function scopePopular($query)
    {
        return $query->where('1', '=', 1);
    }
}
