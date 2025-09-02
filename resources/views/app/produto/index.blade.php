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
                        <th>Fornecedor</th>
                        <th>Peso</th>
                        <th>Unidade ID</th>
                        <th>Comprimento</th>
                        <th>Altura</th>
                        <th>Largura</th>
                        <th>Excluir</th>
                        <th>Vizualizar Dados</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($produtos as $produto)            
                        <tr>
                            <td>{{$produto->nome}}</td>
                            <td>{{$produto->descricao}}</td>
                            <td>{{$produto->fornecedor->nome}}</td>
                            <td>{{$produto->peso}}</td>
                            <td>{{$produto->unidade_id}}</td>
                            <td>{{$produto->itemDetalhe->comprimento ?? 'N/A'}}</td>
                            <td>{{$produto->itemDetalhe->altura ?? 'N/A'}}</td>
                            <td>{{$produto->itemDetalhe->largura ?? 'N/A'}}</td>
                            
                            <td><a href="{{route('produto.show',['produto'=>$produto->id])}}">Vizualizar</a></td>
                            <td>
                                <form id="form_{{$produto->id}}" method="post" action="{{route('produto.destroy', ['produto'=>$produto->id])}}">
                                    @method('DELETE')
                                    @csrf

                                    {{--
                                        <button type="submit">
                                            Excluir
                                        </button> 
                                    --}}

                                    <a href="#" onclick="document.getElementById('form_{{$produto->id}}').submit()">Excluir</a>
                                </form>
                            </td>
                            <td><a href="{{route('produto.edit',['produto'=>$produto->id])}}">Editar</a></td>
                        </tr>
                        <tr>
                            <td colspan="12">
                                <p>Pedidos</p>
                                @foreach ($produto->pedidos as $pedido)
                                    <a href="{{route('pedido-produto.create', ['pedido' => $pedido->id])}}">
                                        Pedido: {{$pedido->id}}</a>
                                @endforeach
                            </td>
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