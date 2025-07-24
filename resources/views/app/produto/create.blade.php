@extends('app.layouts.basico')
@section('titulo', 'Adiciona Poduto')

@section('conteudo')

<div class="conteudo-pagina">

    <div class="titulo-pagina-2">
        <p>Produtos - Adicionar</p>
    </div>

    <div class="menu">
        <ul>
            <li><a href="">Novo</a></li>
            <li><a href="{{route('produto.index')}}">Consulta</a></li>
        </ul>
    </div>

    <div class="informacao-pagina">
        <div style="width: 40%; margin-left:auto; margin-right:auto;">
            <form action="{{route('produto.store')}}" method="post">
                @csrf
                
                <input name="nome" value="{{old('nome')}}" type="text" class="borda-preta" placeholder="Nome">
                {{$errors->has('nome') ? $errors->first('nome') : ''}}

                <input name="descricao" value="{{old('descricao')}}" type="text" class="borda-preta" placeholder="Descrição">
                {{$errors->has('descricao') ? $errors->first('descricao') : ''}}

                <input name="peso" value="{{old('peso')}}" type="text" class="borda-preta" placeholder="Peso">
                {{$errors->has('peso') ? $errors->first('peso') : ''}}

                <select name="unidade_id" class="borda-preta" placeholder="Unidade"> 
                    <option >-- Selecione a Unidade de Medida</option>
                    @foreach ($unidade as $unidades)
                        <option value="{{$unidades->id}}" {{old('unidade->id') == $unidades->id ? 'selected': ''}}>{{$unidades->descricao}}</option>
                    @endforeach                                   
                </select>
                {{$errors->has('unidade_id') ? $errors->first('unidade_id') : ''}}
                

                <button type="submit" class="borda-preta">Adicionar</button>
            </form>
            
        </div>
    </div>
    

</div>

@endsection