@extends('app.layouts.basico')
@section('titulo', 'Adiciona Pedido')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
            <p>Pedido - Adicionar</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="">Novo</a></li>
            <li><a href="{{route('pedido.index')}}">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 40%; margin-left:auto; margin-right:auto;">
            @component('app.pedido._components.form_create_edit', ['cliente' => $clientes])
                
            @endcomponent
            
        </div>
    </div>
    

</div>

@endsection