<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Links;

class MainController extends Controller
{
    public function displayLinks(){

        
        $links = Links::all();

        return view('links',compact('links'));
        



    }

    public function redirect($code){

        $link = Links::where('code',$code)->first();

        if(!$link){
            return "no link found";
        }
        else

            return \Redirect::to($link->url);


    }

    public function showForm(){

        return view('create');
    }

    

    public function createLink(Request $request){

        $url = $request->input('urlname');

        // function RandomStr()
        // {
        //     $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        //     $randstring = '';
        //     for ($i = 0; $i < 10; $i++) {
        //         $randstring = $characters[rand(0, strlen($characters))];
        //     }
        //     return $randstring;
        // }
        //generating random code


        //generating random integer
        $code = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);

        //inserting data into links table
        $link = new Links;

        $link->url = $url;
        $link->code = $code;

        $link->save();
        
        echo "<a href='$link->code'>shortlink</a>";
        

    }

       
}
