<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AddressType extends Model
{
    protected $table = "ch_pulse_address_type";
    public $timestamps = False;
     
     public function addr_type(){
          return $this->belongsTo(Address::class);
     }
     
}
