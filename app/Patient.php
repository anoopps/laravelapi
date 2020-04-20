<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Patient extends Model
{
    //
    protected $table ="ch_pulse_patient";
    public $timestamps = False;
    
    public function team(): BelongsTo
    {         
       return $this->belongsTo(Team::class);
    }
    
    public function site(): BelongsTo
    {
        return $this->belongsTo(Site::class);
    }
    
    public function notes(): HasMany
    {
      return $this->hasMany(Note::class);
    }
    
    public function address(): HasMany
    {
      return $this->hasMany(Address::class);
    }
    
    public function location(): BelongsTo
    {         
        return $this->belongsTo(Location::class);
    }
    
    public function miscellaneous(): HasMany
    {        
        return $this->hasMany(Miscellaneous::class);
    }
    public function diagnosis():HasMany
    {        
        return $this->hasMany(DiagnosisDetails::class);
    }
     public function allergy(): HasMany
    {        
        return $this->hasMany(AllergyDetails::class);
    }
  
  
}
 