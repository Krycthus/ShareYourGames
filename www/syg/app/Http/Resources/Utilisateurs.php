<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class Utilisateurs extends Resource
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
            'id' => $this->id,
            'pseudo' => $this->pseudo,
            'mail' => $this->mail,
        ];
    }
}
