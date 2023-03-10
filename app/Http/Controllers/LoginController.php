<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\MessageBag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use App\Model\UserModel;

class LoginController extends Controller
{
    public function __construct()
    {
        date_default_timezone_set('Asia/Jakarta');
    }
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
     */

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    //protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('guest')->except('logout');
    //     $this->middleware('guest:administrator')->except('logout');
    // }

    public function showLoginForm()
    {
        return view('login', ['url' => 'web']);
    }

    public function login(Request $request)
    {
        $this->validate($request, [
            'email' => 'required',
            'password' => 'required',
        ]);
        $cek = UserModel::where('email', $request->email)->get();
        if ($cek->isNotEmpty()) {
            if (Auth::guard('web')->attempt(['email' => $request->email, 'password' => $request->password])) {
                // if successful, then redirect to their intended location
                $id_admin = Auth::guard('web')->user()->id;
                date_default_timezone_set('Asia/Jakarta');
                return redirect()->intended('/dashboard');
            } else {
                $errors = new MessageBag(['password' => ['Your password invalid!. Please Check and Try Again!!!!']]);
                return Redirect::back()->withErrors($errors);
            }
        } else {
            $errors = new MessageBag(['password' => ['Email Tidak Terdaftar di System']]);
            return Redirect::back()->withErrors($errors);
        }
    }

    public function logout(Request $request)
    {
        // $id_web = Auth::guard('web')->user()->id;
        Auth::guard('web')->logout();
        return redirect('/login');
    }
    //register
    public function register(Request $request)
    {

        // dd($request->all());
        $this->validate($request, [
            'name' => 'required',
            // 'email' => 'required',
            // 'password' => 'required',
        ]);
        $cek = UserModel::where('email', $request->email)->get();
        // return dd($cek);
        if ($cek->isEmpty()) {
            $data = new UserModel();
            $data->name = $request->name;
            $data->email = $request->email;
            $data->password = bcrypt($request->password);
            $data->remember_token = $request->_token;
            //saldo
            $data->saldo = 1500000;
            $data->save();
            // return dd($data);
            // return dd($data);
            //messege
            $request->session()->flash('alert-success', 'Register Berhasil');   
            return redirect('/login');
        } else {
            $errors = new MessageBag(['password' => ['Email Sudah Terdaftar di System']]);
            return Redirect::back()->withErrors($errors);
        }
    }
    //blade register
    public function showRegisterForm()
    {
        return view('register', ['url' => 'web']);
    }
}
