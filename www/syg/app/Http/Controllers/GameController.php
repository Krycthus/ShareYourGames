<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\Game as Game;

class GameController extends Controller
{
    public function index ()
    {
        return Game::all();
    }

    public function show($id)
    {
      return Game::find($id);
    }
}
