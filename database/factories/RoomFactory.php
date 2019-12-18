<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Room;
use Faker\Generator as Faker;

$factory->define(Room::class, function (Faker $faker) {
	$township = [
		'အလုံ',
		'ကြည့်မြင်တိုင်',
		'ကမာရွတ်',
		'လှိုင်',
		'ဒဂုံ', 
		'မြောက်ဒဂုံ', 
		'တောင်ဒဂုံ', 
		'မြောက်ဥက္ကလာ', 
		'တောင်ဥက္ကလာ', 
		'ဗဟန်း', 
		'တာမွေ', 
		'ကျောက်မြောင်း', 
		'မင်္ဂလာဒုံ', 
		'အင်းစိန်', 
		'မရမ်းကုန်း'
	];
	$roomType = [
	    'လုံးချင်း',
	    'တိုက်ခန်း',
	    'အဆောင်',
	];
	$userType = [
	    'အမျိုးသား',
	    'အမျိုးသမီး',
	    'အိမ်ထောင်သည်',
	];
    return [
    	// 'township_id' => function () {
     //                        return App\User::inRandomOrder()->first()->id;
    	// 				},
    	// 'township_id' => 1,
    	'township_id' => $township[rand(0, count($township) - 1)],
	    'room_type' => $roomType[rand(0, count($roomType) - 1)],
	    'user_type' => $userType[rand(0, count($userType) - 1)],
	    'price' => $faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = Null),
	    'phone' => $faker->tollFreePhoneNumber(11),
	    'address' => $faker->address(),
	    'facility' => $faker->sentence(30),
	    'description' => $faker->realText(500),
	    'avaliable_date' => $faker->date(),
    ];
});
