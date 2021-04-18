<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seat extends Model
{
    use HasFactory;
    protected $fillable = [
        'seat_number',
        'status',
        'room_id',
    ];

    public function room() {
        return $this->belongsTo('App\Models\Room');
    }
}