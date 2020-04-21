<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Allergy extends Model
{
    protected $table = "ch_pulse_allergy";
    public $timestamp = false;   
}
