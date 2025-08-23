@extends('app.layouts.basico')
@section('titulo', 'Pedidos')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
        <p>Listagem de pedidos</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="{{route('pedido.create')}}">Novo</a></li>
            <li><a href="">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 80%; margin-left:auto; margin-right:auto;">
            <table border="1" width='100%'>
                <thead>
                    <tr>
                        <th>ID Pedido</th>
                        <th>ID Cliente</th>
                        <th>Cliente</th>
                        <th>Adicionar Produto</th>
                        <th>Visualizar Produto</th>

                    </tr>
                </thead>
                <tbody>
                    @foreach ($pedidos as $pedido)            
                        <tr>
                            <td>{{$pedido->id}}</td>                           
                            <td>{{$pedido->cliente_id}}</td>                           
                            <td>{{$pedido->cliente_f->nome}}</td>                           
                            <td><a href="{{route('pedido-produto.create', ['pedido' => $pedido->id])}}">Adicionar produto</a></td>                           
                            <td><a href="{{route('pedido.show', ['pedido' => $pedido->id])}}">Visualizar produto</a></td>                           
                            {{-- <td><a href="{{route('pedido.show',['pedido'=>$pedido->id])}}">Vizualizar</a></td> --}}
                            {{-- <td>
                                <form id="form_{{$pedido->id}}" method="post" action="{{route('pedido.destroy', ['pedido'=>$pedido->id])}}">
                                    @method('DELETE')
                                    @csrf --}}
                                    {{--<button type="submit"> Excluir </button>--}}
                                    {{-- <a href="#" onclick="document.getElementById('form_{{$pedido->id}}').submit()">Excluir</a>
                                </form>
                            </td>
                            <td><a href="{{route('pedido.edit',['pedido'=>$pedido->id])}}">Editar</a></td> --}}
                        </tr>
                    @endforeach
                </tbody>
            </table>    
            
            {{ $pedidos->appends($request)->links()}}
            <br>
            Exibindo {{ $pedidos->count()}} Pedidos de {{ $pedidos->total()}} (de {{ $pedidos->firstItem()}} a {{ $pedidos->lastItem()}})

        </div>
    </div>
</div>

@endsection