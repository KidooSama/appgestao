<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    public function cliente_f(){
        return $this->belongsTo('App\Cliente', 'cliente_id', 'id');
    }
}
