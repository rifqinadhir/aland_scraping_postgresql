-- 1. Membuat database baru untuk project scraping A-Land
-- Nama database: project_scraping_aland
CREATE DATABASE project_scraping_aland;

-- 2. Membuat tabel "produk" untuk menyimpan data hasil scraping
-- Kolom:
-- - nama_produk : nama produk (tipe teks)
-- - merek       : merek produk (tipe teks)
-- - harga       : harga produk dalam bentuk angka (integer)
-- - link_produk : URL/link menuju halaman produk (tipe teks)
CREATE TABLE produk (
    nama_produk TEXT,
    merek TEXT,
    harga INTEGER,
    link_produk TEXT
);

-- 3. Memasukkan data dari file CSV ke tabel "produk"
-- COPY digunakan untuk memindahkan data dari file ke tabel
-- Urutan kolom harus sesuai dengan isi CSV
-- DELIMITER ',' artinya pemisah antar kolom adalah koma
-- CSV HEADER berarti baris pertama pada file adalah nama kolom
COPY produk(nama_produk, merek, harga, link_produk)
FROM '/tmp/data_produk_aland_clean.csv'
DELIMITER ','
CSV HEADER;

-- 4. Menampilkan seluruh isi tabel untuk memastikan data berhasil dimuat
SELECT * FROM produk;