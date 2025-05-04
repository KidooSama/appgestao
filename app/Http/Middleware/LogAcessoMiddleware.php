<?php

namespace App\Http\Middleware;
use App\LogAcesso;
use Closure;

class LogAcessoMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // 
        $ip = $request->server('REMOTE_ADDR');
        $rota= $request->getRequestUri();
        LogAcesso::create(["log"=>"Ip: $ip de menino requisitou $rota"]);
        $resposta = $next($request);

        $resposta->setStatusCode(201, 'O estatus da resposta foram modificados');
        return $resposta;
    }
}
