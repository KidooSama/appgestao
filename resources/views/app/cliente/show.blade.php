@extends('app.layouts.basico')
@section('titulo', 'Vizualizar Cliente')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
        <p>Clientes - Visualizar</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="{{route('cliente.create')}}">Novo</a></li>
            <li><a href="{{route('cliente.index')}}">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 40%; margin-left:auto; margin-right:auto;">
            <table border="1" style="text-align:left;">
                <tr>
                    <td>ID:</td>
                    <td>{{$cliente->id}}</td>
                </tr>
                <tr>
                    <td>Nome:</td>
                    <td>{{$cliente->nome}}</td>

            </table>
            
        </div>
    </div>
    

</div>

@endsection