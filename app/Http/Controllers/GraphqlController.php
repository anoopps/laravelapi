<?php

namespace App\Http\Controllers;
use App\GraphqlQueries;
use App\Http\Helper\ResponseBuilder;
use Illuminate\Support\Facades\DB;

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
        $newgraphql = new GraphqlQueries;
        $newgraphql->title = $request->input("title");
        $newgraphql->graphql = $request->input("graphql");        
          if( $newgraphql->save() ){
            $success = true;
            $info = "Query saved!";
            $data = $newgraphql->id;
        }else{
            $success = false;
            $info = "Query not saved";
        }        
        return ResponseBuilder::response($success, $info, $data);  
    }
    
     /**
     * Create temprary table graphql_quries
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
       public function createTable(){
        
            $createTableSqlString = "CREATE TABLE `graphql_quries` (
            `id` int(11) NOT NULL,
            `title` varchar(250) NOT NULL,
            `graphql` text NOT NULL,
            `created_at` datetime NOT NULL DEFAULT current_timestamp()
            ) ENGINE=InnoDB DEFAULT CHARSET=latin1;";
    
            DB::statement($createTableSqlString);
    }
}
