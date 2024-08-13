<?php

namespace App\Controllers;

use App\Models\KomikModel;
use Exception;

// use Config\Database; (jika ingin menghubungkan ke database tanpa model menggunakan ini)

class Komik extends BaseController
{
    protected $komikModel;
    public function __construct()
    {
        $this->komikModel = new komikModel();
    }

    public function index()
    {
        // $komik = $this->komikModel->findAll();

        $data = [
            'title' => 'Data Rekap',
            'komik' => $this->komikModel->getKomik()
        ];

        //koneksi ke database tanpa model
        // $db = \Config\Database::connect();
        // $komik = $db->query("SELECT * FROM tb_komik");
        // foreach ($komik->getResultArray() as $row) {
        //     d($row);
        // }


        return view('komik/index', $data);
    }

    public function detail($slug)
    {

        $data = [
            'title' => 'Detail',
            'komik' => $this->komikModel->getKomik($slug)
        ];

        //jika komik tidak ditemukan
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul Komik ' . $slug . ' Tidak Ditemukan');
        }

        return view('komik/detail', $data);
    }

    public function create()
    {
        $data = [
            'title' => 'Tambah Data Komik',
            'validation' => \Config\Services::validation()
        ];

        return view('komik/create', $data);
    }

    public function save()
    {

        if (!$this->validate(
            [
                'judul_komik' => [
                    'rules' => 'required|is_unique[tb_komik.judul_komik]',
                    'errors' => [
                        'required' => 'judul komik tidak boleh kosong',
                        'is_unique' => 'judul komik sudah terdaftar'
                    ]
                ]
            ]
        )) {
            $validation = \Config\Services::validation();
            // dd($validation);
            return redirect()->back()->withInput()->with('validation', $validation);
        }

        //mengambil gambar
        $fileSampul = $this->request->getFile('sampul');
        // dd($fileSampul);

        // if ($fileSampul->getSize() > 2048) {
        //     session()->setFlashdata('error_sampul', 'Ukuran Gambar terlalu besar');
        //     return redirect()->back()->withInput();
        // }

        $namaSampul = 'arnold_1.jpg';

        if ($fileSampul->getError() === UPLOAD_ERR_OK) {
            //generate nama random
            $namaSampul = $fileSampul->getRandomName();
            //pindahkan file ke folder img
            $fileSampul->move('img', $namaSampul);
            //ambil nama sampul
            // $namaSampul = $fileSampul->getName(); --> ini jika ingin nama filenya seadanya
        }

        $slug = url_title($this->request->getVar('judul_komik'), '-', true);

        $this->komikModel->save([
            'judul_komik' => $this->request->getVar('judul_komik'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan.');

        return redirect()->to('/komik');
    }

    public function delete($id)
    {

        //ambil semua data dalam tabel berdasarkan id
        $komik = $this->komikModel->find($id);

        //cek apakah sampulnya adalah gambar default atau bukan
        if ($komik['sampul'] != 'arnold_1.jpg') {
            //jika sampulnya bukan gambar default maka hapus
            unlink('img/' . $komik['sampul']);
        }

        $this->komikModel->delete($id);
        session()->setFlashdata('pesan', 'Data Berhasil Dihapus.');
        return redirect()->to('/komik');
    }

    public function edit($slug)
    {
        $data = [
            'title' => 'Form Ubah Data Komik',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug)
        ];

        return view('komik/edit', $data);
    }

    public function update($id)
    {
        // $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));
        // if ($komikLama['judul_komik'] == $this->request->getVar('judul_komik')) {
        //     $rule_judul = 'required';
        // } else {
        //     $rule_judul = 'required|is_unique[tb_komik.judul_komik]';
        // }
        // nb : cara diatas kurang efisien namun jika ingin menggunakan cara diatas maka pada baris rules dibawah
        //perlu di ganti seperti ini
        // 'rules' => $rule_judul,
        //untuk cara efisiennya adalah cara yang sekarang digunakan dan u/ penjelasan ada di validation placeholder
        //untuk mengatasi jika di dalam database ada nama yang sama agar tidak menumpuk

        if (!$this->validate([
            'judul_komik' => [
                'rules' => 'required|is_unique[tb_komik.judul_komik,id,' . $id . ']',
                'errors' => [
                    'required' => 'judul komik tidak boleh kosong',
                    'is_unique' => 'judul komik sudah terdaftar'
                ]
            ]
        ])) {
            $validation = \Config\Services::validation();
            // dd($validation);
            return redirect()->back()->withInput()->with('validation', $validation);
        }

        $fileSampul = $this->request->getFile('sampul');

        $oldSampul = $this->request->getVar('oldSampul');

        if ($fileSampul->getError() === UPLOAD_ERR_NO_FILE) {
            //jika tidak ada file yg diupload maka gunakan file lama
            $namaSampul = $oldSampul;
        } else {
            // generate random name
            $namaSampul = $fileSampul->getRandomName();

            //pindahkan ke folder img
            $fileSampul->move('img', $namaSampul);

            //hapus gambar lama
            unlink('img/' . $oldSampul);
        }

        $slug = url_title($this->request->getVar('judul_komik'), '-', true);

        $this->komikModel->save([
            'id' => $id,
            'judul_komik' => $this->request->getVar('judul_komik'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Diubah.');

        return redirect()->to('/komik');
    }
}
