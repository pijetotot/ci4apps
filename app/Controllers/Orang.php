<?php

namespace App\Controllers;

use App\Models\OrangModel;
use Exception;

// use Config\Database; (jika ingin menghubungkan ke database tanpa model menggunakan ini)

class Orang extends BaseController
{
    protected $orangModel;

    public function __construct()
    {
        $this->orangModel = new OrangModel();
    }

    public function index()
    {
        // d($this->request->getVar('keyword'));
        $currentPage = $this->request->getVar('page_penduduk') ? $this->request->getVar('page_penduduk') : 1;

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $orang = $this->orangModel->search($keyword);
        } else {
            $orang = $this->orangModel;
        }

        $data = [
            'title' => 'Daftar Tamu',
            // 'orang' => $this->orangModel->findAll()
            'orang' => $orang->paginate(8, 'penduduk'),
            'pager' => $this->orangModel->pager,
            'currentPage' => $currentPage
        ];

        //koneksi ke database tanpa model
        // $db = \Config\Database::connect();
        // $komik = $db->query("SELECT * FROM tb_komik");
        // foreach ($komik->getResultArray() as $row) {
        //     d($row);
        // }


        return view('orang/index', $data);
    }
}
