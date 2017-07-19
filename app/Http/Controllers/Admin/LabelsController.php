<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Image;
use Illuminate\Support\Facades\Session;
use Carbon\Carbon;
use App\Models\HbbLanguage;
use App\Models\HbbLabel;
use App\Models\HbbLabelTranslation;

class LabelsController extends Controller
{
    //
    public function getLabelsAdmin($id)
    {
        $language = HbbLanguage::get();
        $labels = DB::table('hbb_label')
            ->join('hbb_label_translation','hbb_label.id','=','hbb_label_translation.label_id')
            ->where('hbb_label_translation.language_id',$id)
            ->orderBy('hbb_label_translation.label_name','asc')
            ->select('hbb_label.*','hbb_label_translation.label_name')
            ->get();
        return view('admin.labels.home', [
            'language' => $language,
            'labels' => $labels
        ]);
    }
}
