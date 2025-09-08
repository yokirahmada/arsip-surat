<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="h-full">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sistem Arsip Surat Desa Karangduren</title>
    @vite('resources/css/app.css')
</head>
<body class="bg-gray-100 flex flex-col min-h-full">

    {{-- Navigasi Bar --}}
    <header class="bg-white shadow">
        <div class="container mx-auto px-4 py-6 flex justify-between items-center">
            <div class="text-xl font-bold text-gray-800">
                Sistem Arsip Surat
            </div>
            <nav>
                <a href="{{ route('filament.admin.auth.login') }}" class="text-white bg-amber-600 hover:bg-amber-700 font-medium py-2 px-4 rounded-lg shadow transition-colors">
    Login Admin
</a>
            </nav>
        </div>
    </header>

    {{-- Bagian Utama (Hero) --}}
    <main class="flex-grow flex items-center justify-center">
        <div class="text-center p-8 max-w-2xl mx-auto">
            <h1 class="text-4xl sm:text-5xl font-extrabold text-gray-900 leading-tight mb-4">
                Sistem Arsip Surat <br class="hidden sm:inline">Desa Karangduren
            </h1>
            <p class="text-lg text-gray-600 mb-8">
                Aplikasi digital untuk mengelola dan mengarsipkan surat-surat resmi desa dengan mudah dan aman.
            </p>
            <a href="{{ route('filament.admin.auth.login') }}" class="text-white bg-amber-600 hover:bg-amber-700 font-bold py-3 px-6 rounded-lg shadow-lg text-lg transition-colors transform hover:scale-105">
    Mulai Sekarang
</a>
        </div>
    </main>

    {{-- Footer --}}
    <footer class="bg-gray-800 text-white py-6">
        <div class="container mx-auto text-center text-sm">
            &copy; {{ date('Y') }} Sistem Arsip Surat Desa Karangduren. All Rights Reserved.
        </div>
    </footer>

</body>
</html>