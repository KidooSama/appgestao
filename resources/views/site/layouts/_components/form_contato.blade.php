
{{$slot}}

<form action={{route('site.contato')}} method="post">
    @csrf
    <input name="nome" value="{{old('nome')}}" type="text" placeholder="Nome" class="{{$classe}}">
        {{$errors->has('nome') ? $errors->first('nome') : ''}}<br>
    <br>
    <input name="telefone" value="{{old('telefone')}}" type="text" placeholder="Telefone" class="{{$classe}}">
        {{$errors->has('telefone') ? $errors->first('telefone') : ''}}<br>
    <br>
    <input name="email" value="{{old('email')}}" type="text" placeholder="E-mail" class="{{$classe2 ?? $classe}}">
    {{$errors->has('email') ? $errors->first('email') : ''}}<br>
    <br>
    
    <select name="motivo_contatos_id" class="{{$classe}}">
        <option value="" >Qual o motivo do contato?</option>
        @foreach ($motivo_contatos as $key => $motivo_contato)
            <option value="{{$motivo_contato->id}}" {{old('motivo_contatos_id') == $motivo_contato->id ? 'selected':''}} >{{$motivo_contato->motivo_contato}}</option>
        @endforeach
    </select>
    {{$errors->has('motivo_contatos_id') ? $errors->first('motivo_contatos_id') : ''}}<br>
    <br>
    <textarea name="mensagem" class="{{$classe}}">{{old('mensagem') != '' ? old('mensagem') : 'Preencha aqui a sua mensagem'}}</textarea>
    {{$errors->has('mensagem') ? $errors->first('mensagem') : ''}}<br>
    <br>
    <button type="submit" class="{{$classe}}">ENVIAR</button>
</form>

{{-- @if ($errors->any())
    <div style="color:white; position: absolute; top:0px; left:30%; width:30%; background: orange;">
        @foreach ($errors->all() as $erro)
            {{$erro}}<br>
        @endforeach
    </div> 
@endif --}}