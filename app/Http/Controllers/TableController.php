<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Noj;
use App\Models\Mymusic7;
class TableController extends Controller
{


public function __construct()
{
  
}

public function listData(){

$lists = DB::table('mymusic7s')->get();
echo '{"data":[';
foreach ($lists as $list) {

   echo '["'.$list->name.'",';
    echo '"'.$list->len.'",';  
    echo '"'.$list->id.'"],';
}
echo   '["","",""]]}';
}





public function nojData(){


// 
$nojs = DB::table('noj')->get();
echo '{"data":[';
foreach ($nojs as $noj) {

    echo '["'.$noj->noj1.'",';
    echo '"'.$noj->noj2.'",';
    echo '"'.$noj->noj3.'",';
    echo '"'.$noj->noj4.'",';
    echo '"'.$noj->noj5.'",';
    echo '"'.$noj->noj6.'",';
    echo '"'.$noj->noj7.'",';
    echo '"'.$noj->noj8.'",';
    echo '"'.$noj->noj9.'",';
    echo '"'.$noj->noj10.'",';
    echo '"'.$noj->noj11.'",';
    echo '"'.$noj->noj12.'",';
    echo '"'.$noj->id.'"],';
}

echo   '["","","","","","","","","","","","",""]]}';


}
    
    public function tableTest(){
 return view('page');

}


public function nojUpdate($id){
    $validated = $req->validate([
        // 'noj1' => 'required|unique:App\Models\Noj,noj1|max:255',
        // 'a2' => 'required',
    ]);
    return response()->json([
         'message' => "Welcome"
    ]);
  $noj = Noj::find($id);

// $noj->noj1 = $req->input('noj1');
$noj->noj2 = $req->input('noj2');
$noj->noj3 = $req->input('noj3');
$noj->noj4 = $req->input('noj4');
$noj->noj5 = $req->input('noj5');
$noj->noj6 = $req->input('noj6');
$noj->noj7 = $req->input('noj7');
$noj->noj8 = $req->input('noj8');
$noj->noj9 = $req->input('noj9');
$noj->noj10 = $req->input('noj10');
$noj->noj11 = $req->input('noj11');
$noj->noj12 = $req->input('noj12');
$noj->save();





}
public function submit(Request $req)
{
    $validated = $req->validate([
        'noj1' => 'required|unique:App\Models\Noj,noj1|max:255',
        // 'a2' => 'required',
    ]);
    return response()->json([
         'message' => "Welcome"
    ]);
  $noj = new Noj();

$noj->noj1 = $req->input('noj1');
$noj->noj2 = $req->input('noj2');
$noj->noj3 = $req->input('noj3');
$noj->noj4 = $req->input('noj4');
$noj->noj5 = $req->input('noj5');
$noj->noj6 = $req->input('noj6');
$noj->noj7 = $req->input('noj7');
$noj->noj8 = $req->input('noj8');
$noj->noj9 = $req->input('noj9');
$noj->noj10 = $req->input('noj10');
$noj->noj11 = $req->input('noj11');
$noj->noj12 = $req->input('noj12');
$noj->save();




}

public function submitlist(Request $req)
{
    // $validated = $req->validate([
    //     // 'noj1' => 'required|unique:App\Models\Noj,noj1|max:255',
    //     // 'a2' => 'required',
    // ]);


  $music = new Mymusic7();

$music->name   = $req->input('noj1');
$music->len = $req->input('noj2');
$music->save();

    return response()->json([
         'message' => "Добавлено"
    ]);


}
}


