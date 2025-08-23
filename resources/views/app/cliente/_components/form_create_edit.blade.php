
 
    @if (isset($cliente->id))
        <form action="{{route('cliente.update', [$cliente->id])}}" method="post">
        @csrf
        @method('PUT')
    @else
        <form action="{{route('cliente.store')}}" method="post">
        @csrf

    @endif
        
        {{$errors->has('fornecedor_id') ? $errors->first('fornecedor_id') : ''}}

        <input name="nome" value="{{$cliente->nome ?? old('nome')}}" type="text" class="borda-preta" placeholder="Nome">
        {{$errors->has('nome') ? $errors->first('nome') : ''}}
       

        <button type="submit" class="borda-preta">Adicionar</button>
    </form>