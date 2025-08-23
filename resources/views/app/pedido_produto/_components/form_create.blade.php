
 
<form action="{{route('pedido-produto.store', ['pedido'=> $pedido])}}" method="post">
    @csrf        
        <select name="produto_id" class="borda-preta" placeholder="Cliente"> 
        <option value="">-- Selecione um Produto</option>
        @foreach ($produto as $produtos)
            <option value="{{$produtos->id}}" {{( old('produto_id')) == $produtos->id ? 'selected': ''}}>{{$produtos->nome}}</option>
        @endforeach                                   
    </select>
    {{ $errors->has('produto_id') ? $errors->first('produto_id') : ''}}
    

    <button type="submit" class="borda-preta">Adicionar</button>
</form>