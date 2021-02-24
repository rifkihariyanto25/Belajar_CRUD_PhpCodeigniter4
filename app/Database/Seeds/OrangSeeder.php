<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
// datetime
use CodeIgniter\I18n\Time;

class OrangSeeder extends Seeder
{
    public function run()
    {
        // $data = [
        //     [
        //         'nama' => 'Budi',
        //         'alamat'    => 'Bumi',
        //         'created_at' => Time::now(),
        //         'updated_at' => Time::now()
        //     ],
        //     [
        //         'nama' => 'Bapak Budi',
        //         'alamat'    => 'Bumi',
        //         'created_at' => Time::now(),
        //         'updated_at' => Time::now()
        //     ],
        //     [
        //         'nama' => 'Ibu Budi',
        //         'alamat'    => 'Bumi',
        //         'created_at' => Time::now(),
        //         'updated_at' => Time::now()
        //     ],
        // ];
        // 

        // faker => membuat data random dan 'id_ID => untuk membuat data random sesuai dengan lokasi negara nya
        $faker = \Faker\Factory::create('id_ID');

        // looping untuk mencetak banyak data 

        for ($i = 0; $i < 50; $i++) {
            $data = [

                'nama' => $faker->name,
                'alamat'    => $faker->address,
                'created_at' => Time::createFromTimestamp($faker->unixTime()),
                'updated_at' => Time::now()

            ];

            $this->db->table('orang')->insert($data);
        }
        // Simple Queries
        // $this->db->query("INSERT INTO orang (nama, alamat, created_at, updated_at) VALUES(:nama:, :alamat:, :created_at:,:updated_at:)", $data);

        // Using Query Builder
        // $this->db->table('orang')->insertBatch($data);
    }
}
