<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    use HasFactory;
    protected $fillable = [
        'ticket_price',
        'user_id',
        'screening_id',
        'seat_id',
    ];

    public function user() {
        return $this->belongsTo('App\Models\User');
    }
    public function screening() {
        return $this->belongsTo('App\Models\Screening');
    }
    public function seat() {
        return $this->belongsTo('App\Models\Seat');
    }
}
