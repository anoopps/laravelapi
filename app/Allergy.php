<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Allergy extends Model
{
    protected $table = "ch_pulse_patient_allergy";
    public $timestamp = false;
    
    public function patient(): BelongsTo
    {
        return $this->belongsTo(patient::class);
    }
}
