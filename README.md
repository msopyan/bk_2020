# Notula Website V3

Selamat datang di Repository Notula Website V3.  Repository ini merupakan pusat dari semua kode yang dibutuhkan dalam membangun sistem Website V3. Website ini sendiri merupakan sebuah website yang dibangun khusus untuk kebutuhan PT. Bahasa Kinerja Utama.  

## Getting Started

Sebelum melakukan kontribusi untuk pengembangan sistem ini, diperlukan beberapa pengetahuan standar sebagai berikut: 

### Prerequisites

Pengetahuan yang dibutuhkan: 

1. [Javascript](https://javascript.info)
2. [HTML](https://www.w3schools.com/html/html_intro.asp)
3. [CSS](https://www.w3schools.com/css/)
4. [PHP](https://www.php.net/)
5. [Code Ignither](https://codeigniter.com/)
6. [Database SQL](https://www.mysql.com/)

Pastikan juga tool's pendung (XAMPP/WAMP/AMPPS ...) sudah terinstall di komputer development yang akan dipakai.

1. [Download XAMPP](https://www.apachefriends.org/index.html)
2. Install sesuai dengan OS yang dipakai.


### Installation and Running Development Server

### Folder Structure

Berikut adalah daftar folder penting yang dibutuhkan dalam membangun website ini: 

#### *Application*
- _./src/app_ : Berisi fungsi yang dibutuhkan untuk menjalankan server website.
- _./src/utils_ : Berisi fungsi utilitas yang dapat digunakan untuk membantu dalam melakukan handling data flow. 
- _./src/app/routes_ : Berisi file yang dibutuhkan _routing server website_. Routes disini menuggunakan standar express.js.

#### *Assets*
- _./src/public/assets_ : Berisi aset gambar yang digunakan pada laman website.
- _./src/public/contents_ : Berisi konten tulisan yang digunakan pada laman website. Nama konten sesuai dengan halaman web yang ingin dituju.
- _./src/public/lib_ : Berisi script javascript yang digunakan pada laman website. Script yang ditaruh disini berjalan pada sisi _front-end_ saja. 
- _./src/public/styles_ : Berisi script css yang digunakan pada laman website.
- _./src/public/build_ : (Dibuat otomatis oleh sistem) Berisi bundle javascript dan css yang telah dibuat sebelumnya pada _./src/public/lib_ dan _./src/public/styles_. *Jangan melakukan editing pada folder ini, karena pasti akan ditulis ulang oleh sistem*

#### *System*
- _./src/views_ : Berisi template laman website. Menggunakan pug sebagai template engine nya.
- _./src/views/layouts_ : Berisi template _screens_ atau laman website.
- _./src/views/mixins_ : Berisi template _functions_ komponen pada laman website. 
- _./src/views/fluffy_ : Berisi template testing atau sandbox mencoba pug *Tidak digunakan*

### Important Files

- _./index.php_ : File yang berisi runner untuk menjalankan server website.
- _./composer.json_ : File konfigurasi node js.
- _./.htaccess_ : File yang berisi konfigurasi webpack.
- _./application/config/database.php_ : File yang berisi definisi server website. 
- _./application/controller_ : File javascript laman website yang utama. Berisi runner on start.
- _./application/model_ : File yang berisi basis laman HTML yang digunakan pada website. Masukkan library HTML CSS dan Javascript disini. Menggunakan pug.
- _./application/view_ 

### Troubleshooting

Apabila terjadi kendala dalam menjalankan sistem website-v4, Silakan hubungi tim developer di bawah ini. 

## Developer Team

1. Faqih Sopyan (faqih@bahasakita.co.id)
2. Nizam (nizam@bahasakita.co.id)

