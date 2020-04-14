<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Patient;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(Patient::class, function (Faker $faker) {
  
    return [
           
             'firstname'=>$faker->name,
             'lastname'=>$faker->name,
             'middlename'=>$faker->name,
             'dob'=>now(),
             'precautions'=>$faker->name,        
             'roomNumber'=>Str::random(4),
             'nextFollowup'=>now(),
             'teachComplete'=>Str::random(4),
             'teachReason'=>Str::random(4),
             'hospitalDischarge'=>Str::random(4),
             'hospitalDischargeApproved'=>Str::random(4),
             'vna'=>Str::random(4),
             'vnaVerified'=>Str::random(4),
             'timeCommitment'=>now(),
             'lastModifiedDate'=>now(),
    ];
});
 