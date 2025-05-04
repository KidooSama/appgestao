<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class LoginController extends Controller
{
    public function index(Request $request){

        $erro = '';
        if ($request->get('erro') == 1) {
            $erro = 'Usuario e ou senha nao existe';
        }if ($request->get('erro') == 2) {
            $erro = 'Necessario fazer Login';
        } 

        return view('site.login', ['erro'=>$erro]);
    }
    

    public function autenticar(Request $request){

        $regras = [
            'usuario'=>'email',
            'senha'=>'required'
        ];
        $erro =[
            'usuario.email' => 'O campo email ta errado',
            'senha.required' => 'O campo da senha é necessário',
        ];
        $request->validate($regras,$erro);


        $email = $request->get('usuario');
        $pass =  $request->get('senha');

        $user = new User();
        $usuario = $user->where('email', $email)->where('password', $pass)->get()->first();
        if (isset($usuario->name))  {
            session_start();
            $_SESSION['nome'] = $usuario->name;
            $_SESSION['email'] = $usuario->email;
            return redirect()->route('app.home');
        }else {
            return redirect()->route('site.login', ['erro'=> 1]);
        }
    }
    public function sair(){
        session_destroy();
        return redirect()->route('site.index');
    }
}
