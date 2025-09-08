<?php

namespace Database\Factories;

use App\Models\Surat;
use Illuminate\Database\Eloquent\Factories\Factory;

class SuratFactory extends Factory
{
    protected $model = Surat::class;

    public function definition(): array
    {
        return [
            'nomor_surat' => fake()->unique()->numerify('SK/####/##/2025'),
            'judul' => fake()->sentence(3),
            'file_pdf' => 'surat/' . fake()->uuid() . '.pdf',
        ];
    }
}