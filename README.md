# Notula Website V4

Selamat datang di Repository Notula Website V4.  Repository ini merupakan pusat dari semua kode yang dibutuhkan dalam membangun sistem Website V4. Website ini sendiri merupakan sebuah website yang dibangun khusus untuk kebutuhan PT. Bahasa Kinerja Utama.  Untuk dokumentasi pengembangan bisa di akses di http://bit.ly/DocBKWebV4
## Getting Started

Sebelum melakukan kontribusi untuk pengembangan sistem ini, diperlukan beberapa pengetahuan standar sebagai berikut: 

### Prerequisites
Pengetahuan yang dibutuhkan: 

1. [Javascript](https://javascript.info)
2. [HTML](https://www.w3schools.com/html/html_intro.asp)
3. [CSS](https://www.w3schools.com/css/)
4. [PHP](https://www.php.net/)
5. [CodeIgnither](https://codeigniter.com/)
6. [Database SQL](https://mariadb.org/)

Pastikan juga tool's pendung (XAMPP/WAMP/AMPPS ...) sudah terinstall di komputer development yang akan dipakai.

1. [Download XAMPP](https://www.apachefriends.org/index.html)
2. Install sesuai dengan OS yang dipakai.
*Local server development

### Installation and Running Server
1. git clone https://github.com/msopyan/bk_2020.git
2. cd bk_2020
3. Install Database yang tersedia di dalam package
4. Configurasi database di folder config database.php
* Sesuaikan dengan lokasi database, username, password dan nama database
5. Selesai

### Folder Structure

Berikut adalah daftar folder penting yang dibutuhkan dalam membangun website ini: 

#### *Application*
- _./application/config_ : Berisi fungsi yang dibutuhkan untuk menjalankan server website.
- _./application/controllers_ : Berisi fungsi utilitas yang dapat digunakan untuk membantu dalam melakukan handling data flow. 
- _./application/models_ : Berisi file yang dibutuhkan _routing database website.
- _./application/liblaries_ : Berisi file liblary yang digunakan pada website.
- _./application/views_ : Berisi file template laman website

#### *Assets*
- _./assets_ : Berisi aset yang digunakan untuk tampilan yang digunkan pada dashboard administrator.
  1. Bootstrap version 3.3.7
  2. Montserrat font
- _./theme_ : Berisi aset yang digunakan untuk tampilan yang digunakan pada laman website.
  1. Bootstrap version 3.3.7
  2. Montserrat font

#### *System*
Folder ini berisi file inti kerangka kerja. Tidak disarankan untuk membuat perubahan dalam direktori ini adalah composer.json dan composer.lock

### Important Files
- _./index.php_ : File yang berisi runner untuk menjalankan server website.
- _./composer.json_ : File konfigurasi node js.
- _./.htaccess_ : File yang berisi konfigurasi webpack.
- _./application/config/database.php_ : File yang berisi definisi server website. 
- _./application/controller_ : File mian controller laman website yang utama. Berisi runner on start.
- _./application/libraries_ : File liblary laman website yang digunakan untuk mengambil service.
- _./application/models_ : File yang berisi model basis digunakan pada website. 
- _./application/view_ : File yang berisi tampilan halaman website.
 
### Troubleshooting

Apabila terjadi kendala dalam menjalankan sistem website-v4, Silakan hubungi tim developer di bawah ini. 

## Developer Team

1. Faqih Sopyan (faqih@bahasakita.co.id)
2. Nizam (nizam@bahasakita.co.id)

