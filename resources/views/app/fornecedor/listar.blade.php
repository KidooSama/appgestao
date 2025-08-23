@extends('app.layouts.basico')
@section('titulo', 'Fornecedor')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
        <p>Fornecedor - Listar</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="{{route('app.fornecedor.adicionar')}}">Novo</a></li>
            <li><a href="{{route('app.fornecedor')}}">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 80%; margin-left:auto; margin-right:auto;">
            <table border="1" width='100%'>
                <thead>
                    <tr>
                        <th>nome</th>
                        <th>site</th>
                        <th>uf</th>
                        <th>email</th>
                        <th>Excluir</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($forn as $forns)            
                        <tr>
                            <td>{{$forns->nome}}</td>
                            <td>{{$forns->site}}</td>
                            <td>{{$forns->uf}}</td>
                            <td>{{$forns->email}}</td>
                            <td><a href="{{route('app.fornecedor.excluir', $forns->id)}}">Excluir</a></td>
                            <td><a href="{{route('app.fornecedor.editar', $forns->id)}}">Editar</a></td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <p>Lista de Produtos</p>
                                <table border="1" style="margin=">
                                    <thead>
                                        <tr>
                                            <td>ID</td>
                                            <td>Nome</td>
                                            <td>Descrição</td>
                                            <td>Peso</td>
                                            <td>Unidade</td>
                                            <td>Fornecedor ID</td>
                                        </tr>
                                        <tbody>
                                            @foreach ($forns->produtos as $produto)
                                                <tr>
                                                    <td>{{$produto->id}}</td>
                                                    <td>{{$produto->nome}}</td>
                                                    <td>{{$produto->descricao}}</td>
                                                    <td>{{$produto->peso}}</td>
                                                    <td>{{$produto->unidade_id}}</td>
                                                    <td>{{$produto->fornecedor_id}}</td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </thead>
                                </table>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>    
            
            {{ $forn->appends($request)->links()}}
            <br>
            {{ $forn->count()}} - Total de Registros por Pagina
            <br>
            {{ $forn->total()}} - Todos Registros Consultados
            <br>
            {{ $forn->firstItem()}} - Primeiro Registro
            <br>
            {{ $forn->lastItem()}} - Ultimo de Registro
            <br>
            Exibindo {{ $forn->count()}} Fornecedores de {{ $forn->total()}} (de {{ $forn->firstItem()}} a {{ $forn->lastItem()}})

        </div>
    </div>
</div>

@endsection