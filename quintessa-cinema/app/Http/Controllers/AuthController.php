<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{

    public function loginPage()
    {
        return view('login.signin');
    }

    public function registerPage()
    {
        return view('login.register');
    }

    public function register(Request $request) {
        $this->validate($request,[
            'password'=>'required|min:6',
            'repassword'=>'required|min:6|same:password'
        ],[
            'repassword.same'=>'Bạn chưa nhập lại mật khẩu'
        ]);
        $user = new User();
        $user->name=$request->name;
        $user->email=$request->email;
        $user->password=bcrypt($request->password);
        $user->level = 1;
        $user->save();
        return redirect()->route('cinema.loginpage');
    }

    public function login(Request $request)
    {
            $email =$request->email;
            $password=$request->password;
        if(Auth::attempt(['email'=>$email,'password'=>$password])){
            if(Auth::user()->level == 0){
                return redirect()->route('admin.home');
            }else {
            return redirect()->route('cinema.home');
            }
        }else{
            return redirect()->route('cinema.loginpage');
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('cinema.home');
    }
}
