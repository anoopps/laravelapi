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
      //  print_r( $request->input() ); exit;
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
