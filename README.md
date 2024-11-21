# Topup Game Shop

Aplikasi mobile yang memungkinkan pengguna untuk memilih game dan melakukan topup dengan memilih jumlah diamond atau mata uang dalam game lainnya. Aplikasi ini menampilkan berbagai game populer dan menyediakan halaman detail untuk masing-masing game yang berisi form pengisian `user id`, `nama`, dan memilih topup game.

## Fitur

- Tampilan grid yang menampilkan kartu game populer.
- Setiap kartu game bisa diklik untuk melihat halaman detail.
- Halaman detail game mencakup gambar game, form pengisian `user id`, `nama`, dan memilih jumlah diamond untuk topup.
- Daftar harga untuk topup game sesuai dengan game yang dipilih.
- Navigasi antara halaman menggunakan `Navigator.push()`.

## Teknologi

- **Flutter**: Framework untuk membangun aplikasi mobile cross-platform.
- **Dart**: Bahasa pemrograman untuk Flutter.

# Penjelasan
 - main.dart: Ini adalah titik awal aplikasi yang mengarahkan ke halaman utama (MyHomePage).
 - home_page.dart: Menampilkan grid yang berisi daftar game, dan ketika pengguna mengklik salah satu kartu game, mereka akan diarahkan  ke halaman detail game.
 - game_detail_page.dart: Halaman yang menampilkan gambar game dan form untuk mengisi user id, nama, dan memilih jumlah topup (misalnya Diamond) beserta harga yang relevan.
 - assets/: Berisi gambar-gambar yang akan digunakan di aplikasi.


## Instalasi

1. Pastikan Anda telah menginstal Flutter di mesin Anda. Jika belum, ikuti panduan instalasi di [Flutter Docs](https://flutter.dev/docs/get-started/install).
2. Clone repositori ini:
   ```bash
   git clone https://github.com/bigbosspramana/TopUp_Game_Apps.git
3. Masuk ke direktori :
   ```bash
   cd topup_game_shop
4. Instal Dependensi :
   ```bash
   flutter pub get
5. Jalankan aplikasi :
   ```bash
   flutter run

## Kontribusi

Jika Anda ingin berkontribusi, silakan fork repositori ini dan kirimkan pull request. Pastikan untuk mengikuti konvensi gaya pengkodean Flutter dan menulis pengujian unit jika perlu.

## Lisensi

### Penjelasan

- **`README.md`** ini memberikan informasi dasar tentang aplikasi, struktur proyek, cara instalasi, dan cara menjalankan aplikasi.
- Instruksi `flutter pub get` untuk menginstal dependensi dan `flutter run` untuk menjalankan aplikasi sudah disertakan.
- Penjelasan tentang struktur folder dan cara berkontribusi juga disediakan untuk memudahkan kolaborasi.

Pastikan untuk mengganti `https://github.com/bigbosspramana/TopUp_Game_Apps.git` dengan URL repositori Anda yang sesungguhnya jika repositori ini dihosting di platform seperti GitHub.