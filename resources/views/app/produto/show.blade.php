@extends('app.layouts.basico')
@section('titulo', 'Adiciona Poduto')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
        <p>Produtos - Visualizar</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="">Novo</a></li>
            <li><a href="{{route('produto.index')}}">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 40%; margin-left:auto; margin-right:auto;">
            <table border="1" style="text-align:left;">
                <tr>
                    <td>ID:</td>
                    <td>{{$produto->id}}</td>
                </tr>
                <tr>
                    <td>Nome:</td>
                    <td>{{$produto->nome}}</td>
                </tr>
                <tr>
                    <td>Descrição:</td>
                    <td>{{$produto->descricao}}</td>
                </tr>
                <tr>
                    <td>Peso:</td>
                    <td>{{$produto->peso}}Kg</td>
                </tr>
                <tr>
                    <td>Unidade:</td>
                    <td>{{$produto->unidade_id}}</td>
                </tr>
            </table>
            
        </div>
    </div>
    

</div>

@endsection