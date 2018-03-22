<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Utilisateurs;
use App\Http\Resources\Utilisateurs as UtilisateursResource;

class UtilisateursController extends Controller
{
    //
    public function index ()
    {
      return Utilisateurs::all();
    }

    public function show ($id){
        return new UtilisateursResource(Utilisateurs::find($id));
    }
}
