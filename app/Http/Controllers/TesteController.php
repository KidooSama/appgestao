<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TesteController extends Controller
{
    public function teste(int $p1, int $p2){
        // echo "A SOMA DE $p1 + $p2 É: ".($p1 + $p2);

        //return view('site.teste', compact('p1', 'p2'));
        return view('site.teste')->with('p1', $p1)->with('p2', $p2);
    }
}
