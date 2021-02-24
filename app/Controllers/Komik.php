<?php

namespace App\Controllers;

use App\Models\KomikModel;
use phpDocumentor\Reflection\Types\This;

class Komik extends BaseController
{
    protected KomikModel $KomikModel;

    public function __construct()
    {
        $this->KomikModel = new KomikModel();
    }

    public function index()
    {
        // $komik = $this->KomikModel->findAll();
        $data = [
            'title' => 'Daftar Komik',
            'komik' => $this->KomikModel->getKomik()
        ];

        // $KomikModel =new \App\Models\KomikModel();

        // $KomikModel = new KomikModel();

        // cara konek db tanpa model

        // $db = \Config\Database::connect();
        // $komik = $db->query("SELECT * FROM komik");
        // dd($komik);
        // foreach ($komik->getResultArray() as $row) {
        //     d($row);
        // }


        return view('komik/index', $data);
    }


    // view detail
    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->KomikModel->getKomik($slug)
        ];


        // jka komik tidak ada ditabel

        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul Komik' . $slug . 'Tidak Ditemukan');
        }

        return view('komik/detail', $data);
    }


    // view create 
    public function create()
    {
        // session();
        $data = [

            'title' => 'Form Tambah Data Komik',
            'validation' => \Config\Services::validation()
        ];
        return view('komik/create', $data);
    }

    // view save
    public function save()
    {
        // validasi input wajib diisi
        // judul
        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} komik harus diisi',
                    'is_unique' => '{field} komik sudah terdaftar',
                ]
            ]
        ]));
        // penulis
        if (!$this->validate([
            'penulis' => [
                'rules' => 'required|is_unique[komik.penulis]',
                'errors' => [
                    'required' => '{field} penulis harus diisi',
                    'is_unique' => '{field} penulis sudah terdaftar',
                ]
            ]
        ]));
        // penerbit
        if (!$this->validate([
            'penerbit' => [
                'rules' => 'required|is_unique[komik.penerbit]',
                'errors' => [
                    'required' => '{field} penerbit harus diisi',
                    'is_unique' => '{field} penerbit sudah terdaftar',
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/png,image/jpeg]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan Gambar',
                    'mime_in' => 'Yang anda pilih bukan Gambar',
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/Komik/create')->withInput()->with('validation', $validation);
            return redirect()->to('/Komik/create')->withInput();
        }
        // ambil gambar
        $fileSampul = $this->request->getFile('sampul');
        // apakah tidak ada gambar yg diupload
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {
            // generate nama file
            $namaSampul = $fileSampul->getRandomName();
            // ambil file ke folder img
            $fileSampul->move('img', $namaSampul);
        }


        // ambil nama file sampul
        // $namaSampul = $fileSampul->getName();


        $slug = url_title($this->request->getVar('judul'), '-', true);

        $this->KomikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul

        ]);

        session()->setFlashdata('pesan', 'Success');


        return redirect()->to('/komik');
    }


    public function delete($id)
    {
        // cari gambar berdasarkan id 
        $komik = $this->KomikModel->find($id);
        //cek jika file gambarnya default.jpg
        if ($komik['Sampul'] != 'default.jpg') {
            // hapus gambar
            unlink('img/' . $komik['Sampul']);
        }

        $this->KomikModel->delete($id);
        session()->setFlashdata('pesan', 'Berhasil dihapus');
        return redirect()->to('/komik');
    }


    public function edit($slug)
    {
        $data = [

            'title' => 'Form Ubah Data Komik',
            'validation' => \Config\Services::validation(),
            'komik' => $this->KomikModel->getKomik($slug)
        ];
        return view('komik/edit', $data);
    }

    public function update($id)
    {
        // Cek Judul
        $komikLama = $this->KomikModel->getKomik($this->request->getVar('slug'));
        if ($komikLama['Judul'] == $this->request->getVar('judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[komik.judul]';
        }

        if (!$this->validate([
            'judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} harus diisi',
                    'is_unique' => '{field}  sudah terdaftar',
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/png,image/jpeg]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan Gambar',
                    'mime_in' => 'Yang anda pilih bukan Gambar',
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            return redirect()->to('/Komik/edit/' . $this->request->getVar('slug'))->withInput();
            // ->with('validation', $validation);
        }

        $fileSampul = $this->request->getFile('sampul');
        // cek gambar apakah berubah
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            // generate nmaa file random
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan gambar
            $fileSampul->move('img', $namaSampul);
            // hapus file lama
            unlink('img/' . $this->request->getVar('sampulLama'));
        }



        $slug = url_title($this->request->getVar('judul'), '-', true);

        $this->KomikModel->save([
            'id' => $id,
            'slug' => $slug,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul

        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Diubah');


        return redirect()->to('/komik');
    }
}
