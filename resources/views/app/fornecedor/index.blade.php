@extends('app.layouts.basico')
@section('titulo', 'Fornecedor')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
        <p>Fornecedor</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="{{route('app.fornecedor.adicionar')}}">Novo</a></li>
            <li><a href="{{route('app.fornecedor')}}">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 30%; margin-left:auto; margin-right:auto;">
            <form action="{{ route('app.fornecedor.listar') }}" method="get">
                @csrf
                <input name="nome" type="text" class="borda-preta" placeholder="Nome">
                <input name="site" type="text" class="borda-preta" placeholder="Site">
                <input name="uf" type="text" class="borda-preta" placeholder="UF">
                <input name="email" type="email" class="borda-preta" placeholder="Email">
                <button type="submit" class="borda-preta">Pesquisar</button>
            </form>
        </div>
    </div>

</div>

@endsection