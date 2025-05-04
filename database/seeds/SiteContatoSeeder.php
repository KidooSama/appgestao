<?php

use Illuminate\Database\Seeder;
use App\SiteContato;
use Faker\Gemerator as Faker;

class SiteContatoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $contato = new SiteContato();
        // $contato->nome = 'Luke';
        // $contato->telefone = '88992325436';
        // $contato->email = 'lukesousap@gmail.com';
        // $contato->motivo_contato = '2';
        // $contato->mensagem = 'Prato de Uranio - Prato de Uranio';
        // $contato->save();
        factory(SiteContato::class,100)->create();
    }
}
