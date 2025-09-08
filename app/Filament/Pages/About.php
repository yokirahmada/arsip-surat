<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;

class About extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-information-circle';

    protected static ?string $navigationGroup = 'Manajemen Aplikasi';

    protected static ?string $title = 'Tentang Pembuat Sistem';

    protected static string $view = 'filament.pages.about';
}