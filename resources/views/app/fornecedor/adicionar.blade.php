@extends('app.layouts.basico')
@section('titulo', 'Fornecedor')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
        <p>Fornecedor - Adicionar</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="{{route('app.fornecedor.adicionar')}}">Novo</a></li>
            <li><a href="{{route('app.fornecedor')}}">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 40%; margin-left:auto; margin-right:auto;">
            {{$msg ?? ''}}
            <form action="{{route('app.fornecedor.adicionar')}}" method="post">
                @csrf
                <input type="hidden" name="id" value="{{$forn->id ?? ''}}">
                <input name="nome" value="{{$forn->nome ?? old('nome')}}" type="text" class="borda-preta" placeholder="Nome">
                {{$errors->has('nome') ? $errors->first('nome') : ''}}

                <input name="site" value="{{$forn->site ?? old('site')}}" type="text" class="borda-preta" placeholder="Site">
                {{$errors->has('site') ? $errors->first('site') : ''}}

                <input name="uf" value="{{$forn->uf ?? old('uf')}}" type="text" class="borda-preta" placeholder="UF">
                {{$errors->has('uf') ? $errors->first('uf') : ''}}

                <input name="email" value="{{$forn->email ?? old('email')}}" type="email" class="borda-preta" placeholder="Email">
                {{$errors->has('email') ? $errors->first('email') : ''}}

                <button type="submit" class="borda-preta">Adicionar</button>
            </form>
            
        </div>
    </div>
    

</div>

@endsection