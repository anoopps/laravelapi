<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DiagnosisDetails extends Model
{
    protected $table = "ch_pulse_patient_diagnosis";
    public $timestamps = False;
    
    public function Diagnosis(): BelongsTo
    {
        return $this->belongsTo(Diagnosis::class,'id');
    }
}
