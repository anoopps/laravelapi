<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Miscellaneous extends Model
{
    protected $table = "ch_pulse_patient_miscellaneous";
    public $timestamps = False;
     
    public function patient(): BelongsTo
    {
        return $this->belongsTo(patient::class);
    }
}
