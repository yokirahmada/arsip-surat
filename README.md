# Sistem Arsip Surat Desa Karangduren

Aplikasi manajemen arsip surat digital untuk Desa Karangduren, Kecamatan Pakisaji. Aplikasi ini memungkinkan pengguna untuk menyimpan, mencari, mengelola, dan mengunduh surat-surat resmi dalam format PDF secara efisien.

## Fitur Utama

-   **Pengarsipan Surat:** Mengunggah dan menyimpan surat dalam format PDF.
-   **Manajemen Kategori:** Mengelola kategori surat (Undangan, Pengumuman, dll.) yang dapat disesuaikan.
-   **Pencarian & Filter:** Mencari surat berdasarkan judul dan memfilter berdasarkan kategori atau tanggal.
-   **Profil Pengguna:** Halaman pengaturan pribadi untuk mengubah nama, email, dan kata sandi.
-   **Dasbor Statistik:** Menampilkan ringkasan data penting seperti total surat dan pengguna.

---

## Persyaratan Sistem

Pastikan Anda telah menginstal perangkat lunak berikut sebelum memulai:

-   PHP 8.2+
-   Composer
-   Node.js & npm
-   Server Web (Apache/Nginx)
-   Database MySQL
-   Git

---

## Panduan Instalasi dan Penggunaan

Ikuti langkah-langkah di bawah ini untuk menjalankan aplikasi:

1. Klon Repositori

Buka terminal dan klon repositori ini ke komputer Anda:

git clone [https://github.com/yokirahmada/arsip-surat-karangduren.git](https://github.com/yokirahmada/arsip-surat-karangduren.git)
cd arsip-surat-karangduren

2. Pengaturan Database
Buat database baru, lalu impor file database.sql yang ada di repositori ini.

3. Konfigurasi Lingkungan
Salin file .env.example menjadi .env dan konfigurasikan koneksi database Anda.

cp .env.example .env
Pastikan .env Anda berisi konfigurasi database yang benar:

4. Instal Dependensi & Persiapan Akhir
Jalankan perintah berikut secara berurutan untuk menginstal semua yang diperlukan:
===============
composer install
npm install
php artisan key:generate
php artisan storage:link
npm run dev
===============

5. Jalankan Aplikasi
Jalankan server pengembangan Laravel dan server Vite di terminal terpisah (2 terminal):

# Terminal 1
php artisan serve

# Terminal 2
npm run dev

6. Buat Akun Admin
Buat akun admin pertama untuk login ke panel Filament:

username: admin@gmail.com
password: admin

===============
Penulis
Aplikasi ini dikembangkan oleh:

Nama: Yokirahmada
