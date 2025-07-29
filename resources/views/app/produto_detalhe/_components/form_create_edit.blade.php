
    @if (isset($produto_detalhe->id))
        <form action="{{route('produto_detalhe.update', [$produto_detalhe->id])}}" method="post">
        @csrf
        @method('PUT')
    @else
        <form action="{{route('produto_detalhe.store')}}" method="post">
        @csrf

    @endif
        
        <input name="produto_id" value="{{$produto_detalhe->produto_id ?? old('produto_id')}}" type="text" class="borda-preta" placeholder="ID do Produto">
        {{$errors->has('produto_id') ? $errors->first('produto_id') : ''}}

        <input name="comprimento" value="{{$produto_detalhe->comprimento ?? old('comprimento')}}" type="text" class="borda-preta" placeholder="Descrição">
        {{$errors->has('comprimento') ? $errors->first('comprimento') : ''}}

        <input name="largura" value="{{$produto_detalhe->largura ?? old('largura')}}" type="text" class="borda-preta" placeholder="largura">
        {{$errors->has('largura') ? $errors->first('largura') : ''}}

        <input name="altura" value="{{$produto_detalhe->altura ?? old('altura')}}" type="text" class="borda-preta" placeholder="altura">
        {{$errors->has('altura') ? $errors->first('altura') : ''}}

        <select name="unidade_id" class="borda-preta" placeholder="Unidade"> 
            <option value="">-- Selecione a Unidade de Medida</option>
            @foreach ($unidade as $unidades)
                <option value="{{$unidades->id}}" {{($produto_detalhe->unidade_id ?? old('unidade_id')) == $unidades->id ? 'selected': ''}}>{{$unidades->descricao}}</option>
            @endforeach                                   
        </select>
        {{$errors->has('unidade_id') ? $errors->first('unidade_id') : ''}}
        

        <button type="submit" class="borda-preta">Adicionar</button>
    </form>