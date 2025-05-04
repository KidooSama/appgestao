<?php

namespace App\Http\Controllers;
use App\MotivoContato;
use App\SiteContato;
use Illuminate\Http\Request;

class ContatoController extends Controller
{
    public function contato(){

        $motivo_contatos = MotivoContato::all();

         return view('site.contato', ['motivo_contatos'=>$motivo_contatos]);
    }
    public function salvar(Request $request){

        $regras=[
            'nome' => ['required','max:40','min:3'],
            'telefone' => 'required',
            'email' => 'email|unique:site_contatos',
            'motivo_contatos_id' => 'required',
            'mensagem'=>'required|max:500'
        ];
        $feedback = [
            // nome
            'nome.max' => 'O nome deve ter no máximo 40 caracteres.',
            'nome.min' => 'O nome deve ter no mínimo 3 caracteres.',

            // email
            'email.email' => 'O e-mail informado não é válido.',
            'email.unique' => 'Este e-mail já foi utilizado.',

            // motivo_contatos_id
            'motivo_contatos_id.required' => 'Selecione um motivo para o contato.',

            // mensagem
            'mensagem.max' => 'A mensagem pode ter no máximo 500 caracteres.',

            'required'=> 'O campo :attribute deve ser preenchido'
        ];
        $request->validate($regras,$feedback);
        
        SiteContato::create($request->all());
        return redirect()->route('site.index');
    }
}
