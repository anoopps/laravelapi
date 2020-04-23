<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Team;
use App\Http\Helper\ResponseBuilder;

class Dashboard extends Controller
{
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function list()
    {         
      $data = Team::all();
      $info = "Team List";
      if($data){
        $success = true;        
      }else{
        $success = false;
      }    
      return ResponseBuilder::response($success, $info, $data);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      return  $this->Team::all(); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      print_r( $request->input() ); exit;
        $team = new Team;
        $team->name = $request->input("name");
        $team->status = $request->input("status");
        $team->created_by = $request->input("created_by");
        $team->partner_sys_id = $request->input("partner_sys_id");         
        if( $team->save() ){
            $success = true;
            $info = "Team Successfully save";
            $data = $team->id;
        }else{
            $success = false;
            $info = "Team Not Saved";
        }
        return ResponseBuilder::response($success, $info, $data);  
    }
    
    
    public function patients(){
        
        $json = json_encode('[{"firstName":"Dennis","lastName":"J","middleName":"Abbott","dob":"1920-01-14 00:00:00","precautions":"Test precautions data","roomNumber":null,"nextFollowup":"2020-03-19 00:00:00","teachComplete":true,"teachReason":"test teach reason","hospitalDischarge":"2020-03-19 00:00:00","hospitalDischargeApproved":true,"vna":"No VNA","vnaVerified":false,"timeCommitment":"2020-03-04 00:00:00","lastModifiedDate":"2020-03-17 00:00:00","team":{"id":"1","name":"Team1"},"site":{"id":"1","name":"Site1"},"location":{"id":"104","locationName":"Alice Peck Day Hospital"},"address":[{"addrId":1,"patientId":1,"city":"amrtsir","state":"Rajastan","country":"India","addresses":"16 Sarget Road, Sandown, NH "},{"addrId":2,"patientId":1,"city":"amrtsir","state":"Rajastan","country":"India","addresses":"16 Sarget Road, Sandown, NH "}],"notes":[{"id":"1","body":"AHlDPx8lwR","subject":"qLzW"},{"id":"2","body":"2eQPFGOawH","subject":"pRLO"},{"id":"3","body":"D6RDKcLZ5q","subject":"TECy"},{"id":"4","body":"ItjPoREtW2","subject":"Jy29"},{"id":"5","body":"sKwKj6nqTy","subject":"m1te"},{"id":"6","body":"WH7zTscFLG","subject":"vm16"},{"id":"7","body":"6PR4P4a2Ys","subject":"cR7t"},{"id":"8","body":"q2pdIhkSyS","subject":"sPfV"},{"id":"9","body":"TVtLUft785","subject":"qaXv"},{"id":"10","body":"mJaG1MJ79l","subject":"7Gfw"}],"diagnosis":[{"diagnosis":{"status":1,"description":"diagnosis1"}},{"diagnosis":{"status":1,"description":"diagnosis2"}}]},{"firstName":"Shirley","lastName":"A","middleName":"Abbott","dob":"1920-01-14 00:00:00","precautions":"Test precautions data","roomNumber":null,"nextFollowup":"2020-03-19 00:00:00","teachComplete":true,"teachReason":"test teach reason","hospitalDischarge":"2020-03-19 00:00:00","hospitalDischargeApproved":true,"vna":"No VNA","vnaVerified":false,"timeCommitment":"2020-03-04 00:00:00","lastModifiedDate":"2020-03-17 00:00:00","team":{"id":"2","name":"Team2"},"site":{"id":"2","name":"Site2"},"location":{"id":"104","locationName":"Alice Peck Day Hospital"},"address":[],"notes":[],"diagnosis":[]},{"firstName":"Dennis","lastName":"J","middleName":"Abbott","dob":"1920-01-14 00:00:00","precautions":"Test precautions data","roomNumber":null,"nextFollowup":"2020-03-19 00:00:00","teachComplete":true,"teachReason":"test teach reason","hospitalDischarge":"2020-03-19 00:00:00","hospitalDischargeApproved":true,"vna":"No VNA","vnaVerified":false,"timeCommitment":"2020-03-04 00:00:00","lastModifiedDate":"2020-03-17 00:00:00","team":{"id":"3","name":"Team created from postman"},"site":{"id":"3","name":"site from graphql "},"location":{"id":"104","locationName":"Alice Peck Day Hospital"},"address":[{"addrId":3,"patientId":3,"city":"amrtsir","state":"Rajastan","country":"India","addresses":"16 Sarget Road, Sandown, NH "}],"notes":[],"diagnosis":[]},{"firstName":"Melanie","lastName":"D","middleName":"Abdenior","dob":"1920-01-14 00:00:00","precautions":"Test precautions data","roomNumber":null,"nextFollowup":"2020-03-19 00:00:00","teachComplete":true,"teachReason":"test teach reason","hospitalDischarge":"2020-03-19 00:00:00","hospitalDischargeApproved":true,"vna":"No VNA","vnaVerified":false,"timeCommitment":"2020-03-04 00:00:00","lastModifiedDate":"2020-03-17 00:00:00","team":{"id":"4","name":"Team created from postman"},"site":{"id":"4","name":"site from graphql "},"location":{"id":"104","locationName":"Alice Peck Day Hospital"},"address":[{"addrId":4,"patientId":4,"city":"amrtsir","state":"Rajastan","country":"India","addresses":"16 Sarget Road, Sandown, NH "}],"notes":[],"diagnosis":[]},{"firstName":"Steve","lastName":"C","middleName":"Ackerman","dob":"1920-01-14 00:00:00","precautions":"Test precautions data","roomNumber":null,"nextFollowup":"2020-03-19 00:00:00","teachComplete":true,"teachReason":"test teach reason","hospitalDischarge":"2020-03-19 00:00:00","hospitalDischargeApproved":true,"vna":"No VNA","vnaVerified":false,"timeCommitment":"2020-03-04 00:00:00","lastModifiedDate":"2020-03-17 00:00:00","team":{"id":"5","name":"Team created from postman"},"site":{"id":"5","name":"site from graphql "},"location":{"id":"104","locationName":"Alice Peck Day Hospital"},"address":[{"addrId":5,"patientId":5,"city":"amrtsir","state":"Rajastan","country":"India","addresses":"16 Sarget Road, Sandown, NH "}],"notes":[],"diagnosis":[]}]');
        return $json;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    
}
