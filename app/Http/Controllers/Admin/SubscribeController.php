<?php

namespace App\Http\Controllers\Admin;

use App\Models\HbbLanguage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;
use App\Models\HbbAddress;
use App\Models\HbbSubscribe;
use Carbon\Carbon;
use Image;
use DB;


class SubscribeController extends Controller
{
    public function getSubscribeAdmin()
    {
        $subscribes = DB::table('hbb_subscribe')->get();
        return view('admin.subscribe.subscribe',[
            'subscribes' => $subscribes
        ]);
    }
    public function getEditSubscribe($id)
    {
        $subscribes = HbbSubscribe::find($id);
        return view('admin.subscribe.edit-subscribe',[
            'subscribes' => $subscribes,
            'id' => $id
        ]);
    }

}
