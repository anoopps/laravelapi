<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Site extends Model
{
    protected $table = "ch_pulse_site";
    public $timestamps = False;
    
     protected $fillable = [
        'name', 'status','created_by','partner_sys_id'
    ];

    const CREATED_AT = 'created_at';
    
     public function patient(): BelongsTo
    {
        return $this->belongsTo(patient::class);
    }
}

