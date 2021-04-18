<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Screening extends Model
{
    use HasFactory;
    protected $fillable = [
        'start_time',
        'date',
        'room_id',
        'film_id',
    ];

    public function room() {
        return $this->belongsTo('App\Models\Room');
    }

    public function film() {
        return $this->belongsTo('App\Models\Film');
    }
}
