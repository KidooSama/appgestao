
 
    @if (isset($produto->id))
        <form action="{{route('produto.update', [$produto->id])}}" method="post">
        @csrf
        @method('PUT')
    @else
        <form action="{{route('produto.store')}}" method="post">
        @csrf

    @endif
        
        <input name="nome" value="{{$produto->nome ?? old('nome')}}" type="text" class="borda-preta" placeholder="Nome">
        {{$errors->has('nome') ? $errors->first('nome') : ''}}

        <input name="descricao" value="{{$produto->descricao ?? old('descricao')}}" type="text" class="borda-preta" placeholder="Descrição">
        {{$errors->has('descricao') ? $errors->first('descricao') : ''}}

        <input name="peso" value="{{$produto->peso ?? old('peso')}}" type="text" class="borda-preta" placeholder="Peso">
        {{$errors->has('peso') ? $errors->first('peso') : ''}}

        <select name="unidade_id" class="borda-preta" placeholder="Unidade"> 
            <option value="">-- Selecione a Unidade de Medida</option>
            @foreach ($unidade as $unidades)
                <option value="{{$unidades->id}}" {{($produto->unidade_id ?? old('unidade_id')) == $unidades->id ? 'selected': ''}}>{{$unidades->descricao}}</option>
            @endforeach                                   
        </select>
        {{$errors->has('unidade_id') ? $errors->first('unidade_id') : ''}}
        

        <button type="submit" class="borda-preta">Adicionar</button>
    </form>