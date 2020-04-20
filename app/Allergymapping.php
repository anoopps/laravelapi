<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class AllergyDetails extends Model
{
    protected $table = "ch_pulse_patient_allergy";
    public $timestamp = false;
    
    //public function patient(): BelongsTo
    //{
    //    return $this->belongsTo(Patient::class);
    //}
    
    public function allergyDetails(): BelongsTo
    {        
       return $this->belongsTo(Allergy::class,'id');     
    } 
}
