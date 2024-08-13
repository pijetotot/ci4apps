<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

class PendudukSeeder extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create('id_ID');
        // dd($faker->name());
        for ($i = 0; $i < 100; $i++) {
            # code...
            $data = [
                'nama'       => $faker->name(),
                'alamat'     => $faker->address(),
                'created_at' => Time::createFromTimestamp($faker->unixTime()),
                'updated_at' => Time::now(),
            ];
            // $data = [
            //     [
            //         'nama'       => 'Sholahuddin Hasan',
            //         'alamat'     => 'Jl. Bandeng no. 123, Bangil',
            //         'created_at' => Time::now(),
            //         'updated_at' => Time::now(),
            //     ],
            //     [
            //         'nama'  => 'Udin Petot',
            //         'alamat' => 'Jl. Cucut no. 456, Kersikan',
            //         'created_at' => Time::now(),
            //         'updated_at' => Time::now(),
            //     ]
            // ];

            //simple queries
            // $this->db->query('INSERT INTO penduduk (nama, alamat) VALUES(:nama:, :alamat:)', $data);
            // $this->db->query("INSERT INTO penduduk (nama, alamat, created_at, updated_at) VALUES(:nama:, :alamat:, :created_at:, :updated_at:)", $data);

            // Using query Builder
            $this->db->table('penduduk')->insert($data);
        }
    }
}
