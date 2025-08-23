@extends('app.layouts.basico')
@section('titulo', 'Pedido Produto')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
            <p>Adicionar Produtos ao Pedido</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="">Novo</a></li>
            <li><a href="{{route('pedido.index')}}">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
            <h4>Detalhes do Pedido</h4>
            <p>ID do Pedido: {{$pedido->id}}</p>
            <p>ID do Cliente: {{$pedido->cliente_id}}</p>
            <p>Nome do Cliente: {{$pedido->cliente_f->nome}}</p>
        <div style="width: 40%; margin-left:auto; margin-right:auto;">
            @component('app.pedido_produto._components.form_create', ['pedido' => $pedido, 'produto' => $produto])
                
            @endcomponent
            
        </div>
    </div>
    

</div>

@endsection