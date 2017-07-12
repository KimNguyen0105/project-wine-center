<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\HbbUser;
use App\Models\HbbSlider;
use DB;
use Illuminate\Support\Facades\Session;
use Image;

class SliderController extends Controller
{
    public function getSlider()
    {
        $sliders = HbbSlider::get();
        return view('admin.slider', [
            'sliders' => $sliders,
        ]);
    }

    public function getCreateNewSlider()
    {
        return view('admin.create-slider');
    }

    public function postCreateNewSlider(Request $request)
    {
        $sliders = new HbbSlider();
        $sliders->sort_order = $request->get('sort_order');
        $sliders->link = $request->get('imgSlider');
        $sliders->created_at = Carbon::now();
        $sliders->updated_at = Carbon::now();
        $sliders->status = 1;
//        if ($request->hasFile('imgSlider')) {
//            $file = $request->file('imgSlider');
//            $filename = 'link' . time(). '.' . $file->getClientOriginalExtension();
//            $path = public_path('images/slider/' . $filename);
//            Image::make($file->getRealPath())->resize(300, 200)->save($path);
//            $sliders->link = $filename;
//        }
        if ($sliders->save()) {

            return redirect('admin/slider')->with('success', 'Created successfully');
        }
        else {
            return redirect('admin/slider')->with('error', 'Update fail');
        }
    }
    public function getEditSlider($id)
    {
        $sliders = HbbSlider::find($id);
        return view('admin.edit-slider',[
            'sliders' => $sliders,
            'id' => $id,
        ]);
    }
    public function postEditSlider(Request $request, $id)
    {
        $sliders = $request->all();
        HbbSlider::find($id)->update($sliders);
        return redirect('admin/slider')->with('success','Updated successfully');
    }
    public function getDeleteSlider($id)
    {
        return view('admin.delete-slider',[
            'id' => $id,
        ]);
    }
    public function postDeleteSlider($id)
    {
        HbbSlider::where('id',$id)->delete();
        return redirect('admin/slider')->with('success','Delete successfully');
    }

}
