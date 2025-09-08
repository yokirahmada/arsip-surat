<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Surat extends Model
{
    use HasFactory;

    protected $table = 'surats';

    protected $fillable = [
        'nomor_surat',
        'kategori_id',
        'judul',
        'file_pdf',
         'user_id',
    ];

    /**
     * Get the kategori that owns the Surat.
     */
    public function kategori(): BelongsTo
    {
        return $this->belongsTo(Kategori::class);
    }

        public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}