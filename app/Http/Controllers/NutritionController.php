<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Nutritions;
use App\Models\Nutritionlist;
use Carbon\Carbon;
use Illuminate\Support\Facades\Input;

class NutritionController extends Controller
{

    public function index()
    {
        return Nutritions::select('*')->get();
    }

    public function show($id)
    {
//        return Nutritions::select('*')->where('id',$id)->with('nutlist')->get();
    }

    public function nutritions($nut,$phone,$pin)
    {
        $nutrition =  Nutritions::select('*')->where('id',$nut)->get();
        $nutritionlist =  Nutritionlist::select('*')->where('nutritions_id',$nut)->where('phone',$phone)->where('pin',$pin)->get();

        return [$nutrition,$nutritionlist];
    }

    public function store(Request $request)
    {
//        return Input::all();
        $today = date('Y-m-d');
        $date = $today;
        $item_taken = Input::get('item_taken');
        $nutritions_id = Input::get('nutritions_id');
        $phone = Input::get('phone');
        $pin = Input::get('pin');

        $create = Nutritionlist::create(array(
            'nutritions_id' => $nutritions_id,
            'item_taken' => $item_taken,
            'date' => $date,
            'phone' => $phone,
            'pin' => $pin,
        ));
    }
}
