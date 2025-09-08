<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Surat;
use App\Models\Kategori;

class SuratSeeder extends Seeder
{
    public function run(): void
    {
        $kategori_ids = Kategori::pluck('id');

        Surat::factory()
            ->count(20)
            ->state(function (array $attributes) use ($kategori_ids) {
                return [
                    'kategori_id' => $kategori_ids->random(),
                    'user_id' => rand(1, 2),
                ];
            })
            ->create();
    }
}