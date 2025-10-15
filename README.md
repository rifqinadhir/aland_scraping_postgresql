# **A-Land Product Scraping, Cleaning, and Database Loading using Python & PostgreSQL**

---

## Overview
Project ini berfokus pada pengambilan data produk dari website A-Land.id menggunakan Selenium dan BeautifulSoup. Data produk seperti nama, merek, harga, dan link produk dikumpulkan ke dalam DataFrame dan diekspor ke CSV. Selanjutnya, dilakukan data cleaning pada kolom harga agar dapat dikonversi menjadi tipe numerik (integer). Setelah data bersih, file CSV dimasukkan ke dalam database PostgreSQL dengan membuat database dan tabel baru.

---

## File Description
- data_produk_aland_clean.csv: Dataset setelah pembersihan harga dan konversi ke integer.
- create_database.sql: Script SQL untuk membuat database, tabel, dan import CSV ke PostgreSQL.
- web_scraping_aland.ipynb: Script scraping & cleaning.

---

## Steps
1. Mengambil Data dari Website A-Land
- Buka website A-Land secara otomatis menggunakan program.
- Program menjelajah beberapa halaman produk.
- Ambil informasi penting dari setiap produk:
- Nama produk
- Merek
- Harga
- Link untuk membuka halaman produk
- Simpan semua data ke dalam tabel (DataFrame).
- Simpan data tersebut ke file CSV.

2. Membersihkan Data
- Baca file CSV hasil scraping.
- Harga masih ada tulisan “Rp” dan titik, misalnya “Rp12.999”.
- Buang tulisan “Rp” dan titik.
- Ubah harga menjadi angka murni (contoh: 12999).
- Simpan ulang data yang sudah bersih ke file CSV baru.

3. Membuat Database di PostgreSQL
- Buat database baru dengan nama project_scraping_aland.
- Buat tabel bernama produk dengan kolom:
	- nama_produk
	- merek
	- harga
	- link_produk

4. Memasukkan Data ke dalam Database
- Ambil file CSV yang sudah dibersihkan.
- Masukkan semua isi file ke tabel produk menggunakan perintah SQL.
- Pastikan urutan kolom sesuai (nama_produk, merek, harga, link_produk).

5. Mengecek Hasil
- Tampilkan data dari tabel untuk memastikan semuanya berhasil dimasukkan ke database dengan benar.

---

## Final Database Table Structure
| Kolom | Tipe Data |
|:------|:----------|
| nama_produk | TEXT |
| merek | TEXT |
| harga | INTEGER |
| link_produk | TEXT |

---

## Tools & Libraries
- Python
- Selenium (web automation)
- BeautifulSoup (HTML parsing)
- Pandas (dataframe & cleaning)
- Time (delay)
- PostgreSQL (CREATE DATABASE, CREATE TABLE, COPY)
- SQL

---

## 👤 Author
Rifqi Nadhir Aziz
