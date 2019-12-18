<?php

use Illuminate\Database\Seeder;

class TownshipsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Township::class, 20)->create();
    }
}
