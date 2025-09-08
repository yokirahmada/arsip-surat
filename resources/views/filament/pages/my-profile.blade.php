<x-filament-panels::page>
    <div class="fi-page-content-block p-6 bg-white rounded-xl shadow-sm ring-1 ring-gray-950/5 dark:bg-gray-900 dark:ring-white/10">
        <h2 class="text-xl font-bold tracking-tight text-gray-950 dark:text-white sm:text-2xl">Pengaturan Akun</h2>
        
        <div class="mt-8">
            {{ $this->form }}
            <x-filament::button wire:click="submit" class="mt-6">
                Simpan Perubahan
            </x-filament::button>
        </div>
    </div>
</x-filament-panels::page>