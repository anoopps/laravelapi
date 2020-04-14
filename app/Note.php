<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Note extends Model
{
    protected $table = "ch_pulse_notes";
    public $timestamps = False;
     
    public function patient(): BelongsTo
    {
        return $this->belongsTo(patient::class);
    }
     
}
