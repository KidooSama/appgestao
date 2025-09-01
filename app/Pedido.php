<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    public function cliente_f(){
        return $this->belongsTo('App\Cliente', 'cliente_id', 'id');
    } 
    public function produto(){
        // return $this->belongsToMany('App\Produto', 'pedidos_produtos');
        return $this->belongsToMany('App\Item', 'pedido_produtos', 'pedido_id', 'produto_id');

    }
}
