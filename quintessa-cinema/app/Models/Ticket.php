<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    
    use HasFactory;

    protected $table = 'tickets';
    protected $fillable = [
        'screening_id',
        'seat_id',
        'user_id',
    ];
    public function screening() {
        return $this->belongsTo('App\Models\Screening','screening_id','id');
    }

    public function seat() {
        return $this->belongsTo('App\Models\Seat','seat_id','id');
    }

    public function user() {
        return $this->belongsTo('App\Models\User','user_id','id');
    }

    public function ticketDetail(){
        return $this->hasManyThrough('App\Models\Film','App\Models\Screening','film_id','id','screening_id','id');
    }
}
