<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Allergy;
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

$factory->define(Allergy::class, function (Faker $faker) {
    return [        
                'patient_id' => 1,
                'category_id' => 1,
                'blog_subject_id'=> 1,
                'subject' => Str::random(4),
                'body' => Str::random(10),
                'created_date' => now(),
                'created_by' => 20,
                'status' => 1

    ];
});
 