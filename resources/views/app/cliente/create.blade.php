@extends('app.layouts.basico')
@section('titulo', 'Adiciona Cliente')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
            <p>Cliente - Adicionar</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="">Novo</a></li>
            <li><a href="{{route('cliente.index')}}">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 40%; margin-left:auto; margin-right:auto;">
            @component('app.cliente._components.form_create_edit', [])
                
            @endcomponent
            
        </div>
    </div>
    

</div>

@endsection