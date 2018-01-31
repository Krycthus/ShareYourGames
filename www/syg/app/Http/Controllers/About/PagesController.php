<?php

namespace App\Http\Controllers\About;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function about() 
    {
        return 'A propos de moi';
    }
}
