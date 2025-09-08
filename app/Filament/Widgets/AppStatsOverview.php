<?php

namespace App\Filament\Widgets;

use App\Models\Surat;
use App\Models\Kategori;
use App\Models\User;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class AppStatsOverview extends BaseWidget
{
    protected static ?string $pollingInterval = '15s';

    protected function getStats(): array
    {
        return [
            Stat::make('Total Surat', Surat::count())
                ->description('Jumlah surat yang sudah diarsipkan')
                ->color('success')
                ->icon('heroicon-o-document'),

            Stat::make('Total Kategori', Kategori::count())
                ->description('Jumlah kategori yang tersedia')
                ->color('info')
                ->icon('heroicon-o-folder'),

            Stat::make('Jumlah Pengguna', User::count())
                ->description('Total pengguna yang terdaftar')
                ->color('warning')
                ->icon('heroicon-o-user-group'),
        ];
    }
}