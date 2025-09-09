<?php

namespace App\Filament\Pages;

use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Pages\Page;
use Illuminate\Support\Facades\Hash;
use Filament\Forms;

class MyProfile extends Page implements HasForms
{
    use InteractsWithForms;

    protected static ?string $navigationIcon = 'heroicon-o-user-circle';

    protected static ?string $navigationGroup = 'Manajemen Aplikasi';

    protected static string $view = 'filament.pages.my-profile';

    protected static ?string $title = 'Pengaturan Profil'; // Mengatur judul halaman
    protected static ?string $navigationLabel = 'Pengaturan Profil'; // Mengatur label navigasi

     protected static bool $shouldRegisterNavigation = false;

    public function mount(): void
    {
        $this->form->fill(auth()->user()->attributesToArray());
    }

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->label('Nama Lengkap'),
                Forms\Components\TextInput::make('email')
                    ->email()
                    ->required()
                    ->unique(ignoreRecord: true),
                Forms\Components\TextInput::make('password')
                    ->password()
                    ->nullable()
                    ->dehydrateStateUsing(fn (string $state): string => Hash::make($state))
                    ->dehydrated(fn (string $state): bool => filled($state))
                    ->label('Password Baru'),
            ])
            ->model(auth()->user());
    }

    public function submit(): void
    {
        $state = $this->form->getState();

        if (filled($state['password'])) {
            auth()->user()->update([
                'name' => $state['name'],
                'email' => $state['email'],
                'password' => $state['password'],
            ]);
        } else {
            auth()->user()->update([
                'name' => $state['name'],
                'email' => $state['email'],
            ]);
        }

        Notification::make()
            ->title('Profil berhasil diperbarui!')
            ->success()
            ->send();
    }
}