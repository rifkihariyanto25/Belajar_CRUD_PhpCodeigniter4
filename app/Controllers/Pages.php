<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        // Faker
        // $faker = \Faker\Factory::create();
        $data = [
            'title' => 'home | hasil',
            'tes' => ['satu,dua,tiga']
        ];

        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About| Daftar'
        ];

        return view('pages/about', $data);
    }



    public function contact()
    {
        $data = [
            'title' => 'contact',
            'alamat' => [
                [
                    'tipe' => 'rumah',
                    'alamat' => 'Dibumi',
                    'kota' => 'semesta'
                ],
                [
                    'tipe' => 'rumah',
                    'alamat' => 'Dibumi',
                    'kota' => 'semesta'
                ]
            ]
        ];

        return view('pages/contact', $data);
    }
    // public function coba ()
    // {
    // 	echo "Hallo, Nama saya ";
    // }

    //--------------------------------------------------------------------

}
