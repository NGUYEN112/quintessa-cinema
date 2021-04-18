<?php

namespace Database\Seeders;

use App\Models\Film;
use App\Models\Room;
use App\Models\Screening;
use App\Models\Ticket;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Ramsey\Uuid\Type\Decimal;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
    
        $ticket = new Ticket();
        $ticket->ticket_price = 45000;
        $ticket->user_id = 1;
        $ticket->screening_id = 1;
        $ticket->seat_id = 4;

        $ticket->save();
    }
}
