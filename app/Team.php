<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Team extends Model
{
    protected $table = 'ch_pulse_teams';
    public $timestamps = False;
    
  /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'status','created_by','created_date','partner_sys_id'
    ];

    const CREATED_AT = 'created_at';
    
    public function patient(): BelongsTo
    {
        return $this->belongsTo(patient::class);
    }

    
}
