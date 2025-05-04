<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Fornecedor;

class FornecedorSeeder extends Seeder

{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $fornecedor = new Fornecedor();
        $fornecedor->nome = 'Jolles';
        $fornecedor->site = 'jollessites.com';
        $fornecedor->uf = 'CS';
        $fornecedor->email = 'jollesjelles@gmail.com';
        $fornecedor->save();

        // Usar Fillable
        Fornecedor::create([
            'nome'=>'zimbabue',
            'site'=>'zimbabuecity.org',
            'uf'=>'MA', 
            'email'=>'zimbascitys@gmail.com'

        ]);

        DB::table('fornecedores')->insert([
            'nome'=>'Juves',
            'site'=>'juvesnger.com',
            'uf'=>'AM', 
            'email'=>'juvesnger@gmail.com'
        ]);

    }
}
