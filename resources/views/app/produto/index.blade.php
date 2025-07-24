@extends('app.layouts.basico')
@section('titulo', 'Produto')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
        <p>Listagem de Produtos</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="{{route('produto.create')}}">Novo</a></li>
            <li><a href="">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 80%; margin-left:auto; margin-right:auto;">
            <table border="1" width='100%'>
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Descriçao</th>
                        <th>Peso</th>
                        <th>Unidade ID</th>
                        <th>Excluir</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($produtos as $produto)            
                        <tr>
                            <td>{{$produto->nome}}</td>
                            <td>{{$produto->descricao}}</td>
                            <td>{{$produto->peso}}</td>
                            <td>{{$produto->unidade_id}}</td>
                            <td><a href="">Excluir</a></td>
                            <td><a href="">Editar</a></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>    
            
            {{ $produtos->appends($request)->links()}}
            <br>
            {{ $produtos->count()}} - Total de Registros por Pagina
            <br>
            {{ $produtos->total()}} - Todos Registros Consultados
            <br>
            {{ $produtos->firstItem()}} - Primeiro Registro
            <br>
            {{ $produtos->lastItem()}} - Ultimo de Registro
            <br>
            Exibindo {{ $produtos->count()}} Fornecedores de {{ $produtos->total()}} (de {{ $produtos->firstItem()}} a {{ $produtos->lastItem()}})

        </div>
    </div>
</div>

@endsection