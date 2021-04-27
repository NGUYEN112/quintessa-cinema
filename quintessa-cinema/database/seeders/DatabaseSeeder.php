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
      DB::table('users')->insert([
        'name' => 'Nguyễn Văn Thộn',
        'email' => 'thon@email.com',
        'password' => bcrypt('123456'),
        'level' => 1,
        'avatar' => 'images/thon-avatar.jpg'
    ]);
    }
}
