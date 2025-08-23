@extends('app.layouts.basico')
@section('titulo', 'Adiciona Poduto')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
        <p>pedidos - Visualizar</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="">Novo</a></li>
            <li><a href="{{route('pedido.index')}}">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 40%; margin-left:auto; margin-right:auto;">
            <table border="1" style="text-align:left;">
                <tr>
                    <td>Fornecedor:</td>
                    <td>{{$pedido-> ->nome}}</td>
                </tr>
                <tr>
                    <td>ID:</td>
                    <td>{{$pedido->id}}</td>
                </tr>
                <tr>
                    <td>Nome:</td>
                    <td>{{$pedido->nome}}</td>
                </tr>
                <tr>
                    <td>Descrição:</td>
                    <td>{{$pedido->descricao}}</td>
                </tr>
                <tr>
                    <td>Peso:</td>
                    <td>{{$pedido->peso}}Kg</td>
                </tr>
                <tr>
                    <td>Unidade:</td>
                    <td>{{$pedido->unidade_id}}</td>
                </tr>

            </table>
            
        </div>
    </div>
    

</div>

@endsection