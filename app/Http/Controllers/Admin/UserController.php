<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;
use App\Models\HbbUser;
use App\Models\HbbUserPermission;
use Carbon\Carbon;
use Image;
use DB;

class UserController extends Controller
{
    public function Index()
    {
        $users = DB::table('hbb_user')->get();
        return view('admin.user.user',[
            'users' => $users
        ]);
    }
    public function CreateUser()
    {
        $permission = DB::table('hbb_permission')->get();
        return view('admin.user.create-user',[
            'permission' => $permission
        ]);
    }
    public function StoredUser(Request $request)
    {
        $users = new HbbUser();
        $users->username = $request->get('username');
        $users->fullname = $request->get('fullname');
        $users->password = $request->get('password');
        $users->email = $request->get('email');
        if($request->get('imgAvatar') != null) {
            $users->avatar = $request->get('imgAvatar');
        } else {
            $users->avatar = 'default.jpg';
        }
        $users->create_at = Carbon::now();
        $users->update_at = Carbon::now();
        $users->status = 1;
        $users->save();
        $permission = $request->get('permission');
        foreach ($permission as $item)
        {
            $p = new HbbUserPermission();
            $p->user_id = $users->id;
            $p->permission_id = $item;
            $p->save();
        }
        return redirect('admin/user-management')->with('success','Created successfully');
    }
    public function EditUser($id)
    {
        $permission = DB::table('hbb_permission')->get();
        $user_permission = DB::table('hbb_user_permission')->where('user_id',$id)->get();
        $users = HbbUser::find($id);
        if($users != null)
        {
            return view('admin.user.edit-user',[
                'users'=>$users,
                'id' => $id,
                'permission' => $permission,
                'user_permission'=>$user_permission
            ]);
        }
        else{
            return redirect('admin/user-management')->with('fail','User not found');
        }
    }
    public function UpdateUser(Request $request,$id)
    {
        $users = $request->all();
        HbbUser::find($id)->update($users);
        $permission = $request->get('permission');
        foreach ($permission as $item)
        {
            $p = new HbbUserPermission();
            $p->user_id = $id;
            $p->permission_id = $item;
            $p->save();
        }
        return redirect('admin/user-management')->with('success','Updated user successfully');
    }
    public function DeleteUser($id)
    {
        return view('admin.user.delete-user',[
           'id'=>$id
        ]);
    }
    public function RemoveUser($id)
    {
        HbbUser::where('id',$id)->delete();
        return redirect('admin/user-management')->with('success','Deleted successfully');
    }
    public function Profile($id)
    {
        $users=HbbUser::find($id);
        if($users !=null)
        {
            return view('admin.user.profile',[
                'users'=>$users
            ]);
        } else {
            return redirect()->back();
        }
    }
    public function UpdateProfile(Request $request,$id)
    {
        $users = $request->all();
        HbbUser::find($id)->update($users);
        return redirect()->back()->with('success','Updated your profile successfully');
    }
    public static function getPermissionUserById()
    {
        $user_permission = DB::table('hbb_user_permission')
            ->join('hbb_permission','hbb_user_permission.permission_id','=','hbb_permission.id')
            ->where('hbb_user_permission.user_id',Session::get('user_id'))
            ->get();
        //dd($user_permission);
        return view('admin.permission-user',[
            'user_permission' => $user_permission
        ]);
    }

}
