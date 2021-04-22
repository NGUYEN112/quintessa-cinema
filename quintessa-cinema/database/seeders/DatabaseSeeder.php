<?php

namespace Database\Seeders;

use App\Models\Cinema;
use App\Models\Film;
use App\Models\Newsfeed;
use App\Models\Room;
use App\Models\Screening;
use App\Models\Seat;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     * 
     */
    public function run()
    {
      $dataArray = [];
      for($i =4;$i<24;$i++) {
        array_push($dataArray, [
          'screening_id' => 1,
          'seat_id' => $i+1,
          'user_id' => 1
        ]);
      }
      DB::table('tickets')->insert($dataArray);
    }
}
