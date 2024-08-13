<?php

namespace App\Models;

use CodeIgniter\Model;
use SebastianBergmann\CodeUnit\FunctionUnit;

// use CodeIgniter\Entity\Entity;
// use CodeIgniter\I18n\Time;

class OrangModel extends Model
{
    protected $table = 'penduduk';

    protected $allowedFields = ['nama', 'alamat'];

    // protected $returnType = \App\Entity\User::class;

    protected $useTimestamps = true;

    public function search($keyword)
    {
        return $this->table('penduduk')->like('nama', $keyword)->orLike('alamat', $keyword);
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
