<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Fornecedor;
class FornecedorController extends Controller
{
    public function index(){
       
        return view('app.fornecedor.index');
    }

    public function listar(Request $request){
        
        $forn = Fornecedor::where('nome', 'like', '%'.$request->input('nome').'%')
        ->where('site', 'like', '%'.$request->input('site').'%')
        ->where('uf', 'like', '%'.$request->input('uf').'%')
        ->where('email', 'like', '%'.$request->input('email').'%')
        ->paginate(3);
        return view('app.fornecedor.listar', ['forn'=>$forn, 'request'=>$request->all()]);
        
    }

    public function adicionar(Request $request){
        $msg = '';

        if (!empty($request->input('_token')) && empty($request->id)) {
            $regras = [
                'nome' => 'required|max:40|min:3',
                'site' => 'required',
                'uf' => 'required|max:2|min:2',
                'email' => 'required|email|unique:fornecedores'
            ];
            $feedback = [
                'required' => 'O campo :attribute deve ser preenchido',
                'nome.min' => 'O campo deve ter no mínimo 3 caracteres',
                'nome.max' => 'O campo deve ter no máximo 40 caracteres',
                'uf.max' => 'O campo deve ter no máximo 2 caracteres',
                'uf.min' => 'O campo deve ter no mínimo 2 caracteres',
                'email.email' => 'Insira um email válido',
                'email.unique' => 'O email informado ja esta cadastrado'
            ];
            $request->validate($regras,$feedback);
            Fornecedor::create($request->all());
            echo 'deu bom';
            $msg = 'Cadastro Realizado';
           
        }

        //EDITAR

        if (!empty($request->input('_token')) && !empty($request->id)) {
            $forn = Fornecedor::find($request->input('id'));
            $editar = $forn->update($request->all());
            if ($editar) {
                $msg = 'update deu certo';
            }else{
                $msg = 'update nao deu certo';
            }
            return redirect()->route('app.fornecedor.editar', ['id'=>$request->input('id') ,'msg' => $msg]);   
        }       
        return view('app.fornecedor.adicionar',['msg' => $msg]);   
       
    }
    
    public function editar($id, $msg = ''){
        $forn = Fornecedor::where('id', $id)->get()->first();
        return view('app.fornecedor.adicionar', ['forn' => $forn, 'msg'=>$msg]);    
         
    }

    public function excluir($id){
        $forn = Fornecedor::where('id', $id)->get()->first()->delete();
        return redirect()->route('app.fornecedor.listar');
    }

}
