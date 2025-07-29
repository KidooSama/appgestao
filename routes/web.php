<?php

use App\Http\Middleware\LogAcessoMiddleware;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', 'PrincipalController@principal')->name('site.index');

Route::get('/sobre-nos', 'SobreNosController@sobrenos')->name('site.sobrenos');
Route::get('/contato', 'ContatoController@contato')->name('site.contato');
Route::post('/contato', 'ContatoController@salvar')->name('site.contato');
Route::get('/login', 'LoginController@index')->name('site.login');
Route::post('/login', 'LoginController@autenticar')->name('site.login');

Route::middleware('autenticacao:ldap,visitantes,noggers')->prefix('/app')->group(function(){

    Route::get('/home', 'HomeController@index')->name('app.home');
    Route::get('/sair','LoginController@sair')->name('app.sair');
    Route::get('/cliente', 'ClienteController@index')->name('app.cliente');
    
    
    Route::prefix('fornecedor')->group(function () {
        Route::get('/', 'FornecedorController@index')->name('app.fornecedor');
        Route::post('/listar', 'FornecedorController@listar')->name('app.fornecedor.listar');
        Route::match(['get', 'post'],'/listar', 'FornecedorController@listar')->name('app.fornecedor.listar');
        Route::get('/adicionar', 'FornecedorController@adicionar')->name('app.fornecedor.adicionar');
        Route::post('/adicionar', 'FornecedorController@adicionar')->name('app.fornecedor.adicionar');    
        Route::get('/editar/{id}/{msg?}', 'FornecedorController@editar')->name('app.fornecedor.editar');    
        Route::get('/excluir{id}', 'FornecedorController@excluir')->name('app.fornecedor.excluir');
    });
    
    //produtos
    Route::resource('/produto','ProdutoController');
    //ProdutosDetalhe 
    Route::resource('/produto_detalhe','ProdutoDetalheController'); 
    
});
Route::get('/rotateste/{p1}/{p2}', 'TesteController@teste')->name('teste');


Route::fallback(function(){
    echo 'a rota nao existe, escreve direito - <a href="'.route('site.index').'">clica aqui</a>';
});



