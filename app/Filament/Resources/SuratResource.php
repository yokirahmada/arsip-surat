<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SuratResource\Pages;
use App\Filament\Resources\SuratResource\RelationManagers;
use App\Models\Surat;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\Hidden;


class SuratResource extends Resource
{
    protected static ?string $model = Surat::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationGroup = 'Manajemen Arsip';

public static function form(Form $form): Form
{
    return $form
        ->schema([
            Forms\Components\TextInput::make('nomor_surat')
                ->required()
                ->maxLength(255)
                ->label('Nomor Surat'),
            Forms\Components\Select::make('kategori_id')
                ->relationship('kategori', 'nama_kategori')
                ->required()
                ->label('Kategori Surat'),
            Forms\Components\TextInput::make('judul')
                ->required()
                ->maxLength(255)
                ->label('Judul Surat'),
            Forms\Components\FileUpload::make('file_pdf')
                ->required()
                ->acceptedFileTypes(['application/pdf'])
                ->directory('surat')
                ->label('File PDF'),

            Hidden::make('user_id') // Field tersembunyi
                ->default(auth()->id()),
        ]);
}

public static function table(Table $table): Table
{
    return $table
        ->columns([
            Tables\Columns\TextColumn::make('nomor_surat')
                ->label('Nomor Surat')
                ->searchable(),
            Tables\Columns\TextColumn::make('kategori.nama_kategori')
                ->label('Kategori')
                ->searchable(),
            Tables\Columns\TextColumn::make('judul')
                ->label('Judul Surat')
                ->searchable(),
            Tables\Columns\TextColumn::make('created_at')
                ->label('Diarsipkan Pada')
                ->dateTime()
                ->sortable(),
            Tables\Columns\TextColumn::make('user.name') // Tambahkan baris ini
                ->label('Diarsipkan oleh')
                ->searchable(),
        ])
        ->filters([
    Tables\Filters\SelectFilter::make('kategori')
        ->relationship('kategori', 'nama_kategori')
        ->label('Filter Kategori'),
    Tables\Filters\Filter::make('created_at')
        ->form([
            Forms\Components\DatePicker::make('created_from')
                ->label('Tanggal dari'),
            Forms\Components\DatePicker::make('created_until')
                ->label('Tanggal sampai'),
        ])
        ->query(function (Builder $query, array $data): Builder {
            return $query
                ->when(
                    $data['created_from'],
                    fn (Builder $query, $date): Builder => $query->whereDate('created_at', '>=', $date),
                )
                ->when(
                    $data['created_until'],
                    fn (Builder $query, $date): Builder => $query->whereDate('created_at', '<=', $date),
                );
        })
])
        ->actions([
    Tables\Actions\EditAction::make(),
    Tables\Actions\Action::make('Lihat')
        ->color('info') // Mengubah warna tombol menjadi biru
        ->icon('heroicon-o-eye') // Menambahkan ikon mata
        ->modalHeading(fn ($record) => $record->judul)
        ->modalContent(fn ($record) => view('filament.resources.surat-resource.view-pdf-modal', ['record' => $record]))
        ->modalSubmitAction(false)
        ->modalCancelActionLabel('Tutup'),
    Tables\Actions\Action::make('Unduh')
        ->url(fn ($record) => asset('storage/' . $record->file_pdf))
        ->openUrlInNewTab()
        ->color('success')
        ->icon('heroicon-o-arrow-down-tray'),
    Tables\Actions\DeleteAction::make(),
        ]);
}

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSurats::route('/'),
            'create' => Pages\CreateSurat::route('/create'),
             'view' => Pages\ViewSurat::route('/{record}'),
            'edit' => Pages\EditSurat::route('/{record}/edit'),
        ];
    }
}
