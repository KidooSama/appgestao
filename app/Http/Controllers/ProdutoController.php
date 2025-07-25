<?php

namespace App\Http\Controllers;

use App\Produto;
use Illuminate\Http\Request;
use App\Unidade;


class ProdutoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $produtos = Produto::paginate(10);
        return view('app.produto.index', ['produtos'=>$produtos, 'request'=>$request->all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $unidade = Unidade::all();
        return view('app.produto.create', ['unidade'=> $unidade]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $regras = [
                'nome' => 'required|max:40|min:3',
                'descricao' => 'required|min:3|max:2000',
                'peso' => 'required|integer',
                'unidade_id' => 'exists:unidades,id'
        ];
        $feedback = [
                'required' => 'O campo :attribute deve ser preenchido',
                'nome.min' => 'O campo deve ter no mínimo 3 caracteres',
                'nome.max' => 'O campo deve ter no máximo 40 caracteres',
                'descricao.min' => 'O campo descrição deve ter no mínimo 3 caracteres',
                'descricao.max' => 'O campo descrição deve ter no máximo 40 caracteres',
                'peso.integer' => 'O campo peso deve ser um valor inteiro',
                'unidade_id.exists' => 'A unidade de medida não existe',
                
        ];
        $request->validate($regras,$feedback);
        Produto::create($request->all());
        return redirect()->route('produto.index', ['request'=>$request->all()]);
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Produto  $produto
     * @return \Illuminate\Http\Response
     */
    public function show(Produto $produto)
    {
        return view('app.produto.show', ['produto'=> $produto]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Produto  $produto
     * @return \Illuminate\Http\Response
     */
    public function edit(Produto $produto)
    {
        $unidade = Unidade::all();
        return view('app.produto.edit', ['produto'=> $produto, 'unidade' => $unidade]);
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Produto  $produto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Produto $produto)
    {
        $regras = [
                'nome' => 'required|max:40|min:3',
                'descricao' => 'required|min:3|max:2000',
                'peso' => 'required|integer',
                'unidade_id' => 'exists:unidades,id'
        ];
        $feedback = [
                'required' => 'O campo :attribute deve ser preenchido',
                'nome.min' => 'O campo deve ter no mínimo 3 caracteres',
                'nome.max' => 'O campo deve ter no máximo 40 caracteres',
                'descricao.min' => 'O campo descrição deve ter no mínimo 3 caracteres',
                'descricao.max' => 'O campo descrição deve ter no máximo 40 caracteres',
                'peso.integer' => 'O campo peso deve ser um valor inteiro',
                'unidade_id.exists' => 'A unidade de medida não existe',
                
        ];
        $request->validate($regras,$feedback);
        $produto->update($request->all());

        return redirect()->route('produto.show',['produto'=> $produto->id]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Produto  $produto
     * @return \Illuminate\Http\Response
     */
    public function destroy(Produto $produto)
    {
        $produto->delete();
        return redirect()->route('produto.index');
    }
}
