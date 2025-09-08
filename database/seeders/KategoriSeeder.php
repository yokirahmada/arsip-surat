<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Kategori;

class KategoriSeeder extends Seeder
{
    public function run(): void
    {
        $kategori = ['Undangan', 'Pengumuman', 'Nota Dinas', 'Pemberitahuan'];
        
        foreach ($kategori as $nama) {
            Kategori::create(['nama_kategori' => $nama]);
        }
    }
}