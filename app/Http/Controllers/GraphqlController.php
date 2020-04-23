<?php

namespace App\Http\Controllers;
use App\GraphqlQueries;
use App\Http\Helper\ResponseBuilder;

use Illuminate\Http\Request;

class GraphqlController extends Controller
{
      /**
     * TO List the query
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function show(){
        $data = GraphqlQueries::all();
        return view('help')->with('content', $data);
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
        //
        //$newgraphql = new GraphqlQueries;
        //$newgraphql->title = $request->input("title");
        //$newgraphql->graphql = $request->input("graphql");        
        //  if( $newgraphql->save() ){
        //    $success = true;
        //    $info = "Query saved!";
        //    $data = $newgraphql->id;
        //}else{
        //    $success = false;
        //    $info = "Query not saved";
        //}
        //
        //return ResponseBuilder::response($success, $info, $data);  
    }
}
