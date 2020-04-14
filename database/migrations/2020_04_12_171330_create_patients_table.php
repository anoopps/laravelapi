<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePatientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patients', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            
            $table->increments('id');
            $table->string('firstname');
            $table->string('lastname');
            $table->string('middlename');
            $table->string('dob');
            $table->string('precautions');        
            $table->string('roomNumber');
            $table->string('nextFollowup');
            $table->string('teachComplete');
            $table->string('teachReason');
            $table->string('hospitalDischarge');
            $table->string('hospitalDischargeApproved');
            $table->string('vna');
            $table->string('vnaVerified');
            $table->string('timeCommitment');
            $table->string('lastModifiedDate');
  
  
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patients');
    }
}
