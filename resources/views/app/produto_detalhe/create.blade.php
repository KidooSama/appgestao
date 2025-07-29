@extends('app.layouts.basico')
@section('titulo', 'Adiciona Poduto Detalhes')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
            <p>Produtos Detalhes - Adicionar</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="">Voltar</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 40%; margin-left:auto; margin-right:auto;">
            @component('app.produto_detalhe._components.form_create_edit', ['unidade'=>$unidade])
                
            @endcomponent
            
        </div>
    </div>
    

</div>

@endsection