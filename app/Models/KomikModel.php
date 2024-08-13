<?php

namespace App\Models;

use CodeIgniter\Model;
// use CodeIgniter\Entity\Entity;
// use CodeIgniter\I18n\Time;

class KomikModel extends Model
{
    protected $table = 'tb_komik';

    protected $allowedFields = ['judul_komik', 'slug', 'penulis', 'penerbit', 'sampul'];

    // protected $returnType = \App\Entity\User::class;

    protected $useTimestamps = true;

    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';

    public function getKomik($slug = false)
    {
        if ($slug == false) {
            return $this->findAll();
        }

        return $this->where(['slug' => $slug])->first();
    }
}

// class CreatedAt extends Entity
// {
//     public function setCreatedAt(string $dateString)
//     {
//         $this->attribute['created_at'] = $this->mutateDate($this->attribute['created_at']);
//         return $this;
//     }

//     public function getCreatedAt(string $format = 'Y-m-d H:i:s')
//     {
//         $this->attribute['created_at'] = $this->mutateDate($this->attribute['created_at']);

//         $timezone = $this->timezone ?? app_timezone();
//         $this->attribute['created_at']->setTimezone($timezone);

//         return $this->attribute['created_at']->format($format);
//     }
// }
