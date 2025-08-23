
 
    @if (isset($pedido->id))
        <form action="{{route('pedido.update', [$pedido->id])}}" method="post">
        @csrf
        @method('PUT')
    @else
        <form action="{{route('pedido.store')}}" method="post">
        @csrf

    @endif
        
         <select name="cliente_id" class="borda-preta" placeholder="Cliente"> 
            <option value="">-- Selecione um cliente</option>
            @foreach ($cliente as $clientes)
                <option value="{{$clientes->id}}" {{($pedido->cliente_id ?? old('cliente_id')) == $clientes->id ? 'selected': ''}}>{{$clientes->nome}}</option>
            @endforeach                                   
        </select>
        {{ $errors->has('cliente_id') ? $errors->first('cliente_id') : ''}}
       

        <button type="submit" class="borda-preta">Adicionar</button>
    </form>