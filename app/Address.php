<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Address extends Model
{
    protected $table = "ch_pulse_address";
    public $timestamps = False;
     
    public function patient(): BelongsTo
    {
        return $this->belongsTo(patient::class);
    }
    
    public function addrType():BelongsTo
    {
        return $this->belongsTo(AddressType::class);
    }
     
}
