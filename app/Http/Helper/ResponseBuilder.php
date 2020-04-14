<?php
namespace App\Http\Helper;

class ResponseBuilder{
    
    public static function response($status="", $info="", $data=""){
        
        return [
            "success"=>$status,
            "info"=>$info,
            "data"=>$data
        ];
    }
}

 