<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    protected $fillable = [
            'township_id',
            'room_type',
            'user_type',
            'price',
            'phone',
            'address',
            'facility',
            'description',
            'avaliable_date'
    ];
}
