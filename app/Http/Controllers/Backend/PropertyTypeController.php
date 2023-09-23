<?php

namespace App\Http\Controllers\Backend;

use App\Models\PropertyType;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Amenities;

class PropertyTypeController extends Controller
{
    public function AllType(){
        $types = PropertyType::latest()->get();
        return view('backend.type.all_type',compact('types'));
    } // End Method

    public function AddType(){
        return view('backend.type.add_type');
    } // End Method

    public function StoreType(Request $request){
         // Validation
        $request->validate([
            'type_name' => 'required|unique:property_types|max:200',
            'type_icon' => 'required'
        ]);

        PropertyType::insert([
            'type_name' => $request->type_name,
            'type_icon' => $request->type_icon,
        ]);

        $notification = array(
            'message' => 'PropertyType Create Successful',
            'alert-type' => 'success',
        );
        return redirect()->back()->with($notification);
    } // End Method

    public function EditType($id){
        $types = PropertyType::findOrFail($id);
        return view('backend.type.edit_type',compact('types'));
    } // End Method

    public function UpdateType(Request $request){

        $pid = $request->id;

       PropertyType::findOrFail($pid)->update([
           'type_name' => $request->type_name,
           'type_icon' => $request->type_icon,
       ]);

       $notification = array(
           'message' => 'PropertyType Update Successful',
           'alert-type' => 'success',
       );
       return redirect()->route('all.type')->with($notification);
   } // End Method

   public function DeleteType($id){

    PropertyType::findOrFail($id)->delete();
    $notification = array(
        'message' => 'PropertyType Delete Successful',
        'alert-type' => 'success',
    );
    return redirect()->back()->with($notification);

   }// End Method

//----------------------------AllAmenitie------------------------------------------------

    public function AllAmenitie(){
        $amenities = Amenities::latest()->get();
        return view('backend.amenities.all_amenities',compact('amenities'));
    } // End Method

    public function AddAmenitie(){
        return view('backend.amenities.add_amenities');
    } // End Method

    public function StoreAmenitie(Request $request){
      
       Amenities::insert([
           'amenitis_name' => $request->amenitis_name, 
       ]);

       $notification = array(
           'message' => 'Amenitis Create Successful',
           'alert-type' => 'success',
       );
       return redirect()->back()->with($notification);
   } // End Method

    public function EditAmenitie($id){
        $amenities = Amenities::findOrFail($id);
        return view('backend.amenities.edit_amenities',compact('amenities'));
    } // End Method

    public function UpdateAmenitie(Request $request){
        
        $ams_id = $request->id;
        Amenities::findOrFail($ams_id)->update([
            'amenitis_name' => $request->amenitis_name, 
        ]);

        $notification = array(
            'message' => 'Amenitis Update Successful',
            'alert-type' => 'success',
        );
        return redirect()->route('all.amenitie')->with($notification);
    } // End Method

    public function DeleteAmenitie($id){

        Amenities::findOrFail($id)->delete();
        $notification = array(
            'message' => 'Amenities Delete Successful',
            'alert-type' => 'success',
        );
        return redirect()->back()->with($notification);
    
       }// End Method

}
