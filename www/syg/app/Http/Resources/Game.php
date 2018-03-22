<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class Game extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id_game' => $this->id_game,
            'name_game' => $this->name_game,
            'description_game' => $this->description_game
        ];
    }
}
