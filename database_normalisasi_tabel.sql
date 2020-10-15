CREATE DATABASE toko_cakebakery_Elud;
USE toko_cakebakery_elud;

CREATE TABLE tbl_data_toko (
id_toko VARCHAR (10) PRIMARY KEY,
nama_toko VARCHAR (50),
logo_toko VARCHAR (100),
alamat_toko VARCHAR (100),
no_telp VARCHAR (15)
);

SHOW TABLES;

CREATE TABLE tbl_jabatan (
id_jabatan INT,
nama_jabatan VARCHAR (50),
status_jabatan VARCHAR (50)
);

CREATE TABLE tbl_karyawan(
id_karyawan INT PRIMARY KEY AUTO_INCREMENT,
id_jabatan VARCHAR (15),
nik INT,
nama_karyawan VARCHAR (50),
email VARCHAR (30) UNIQUE,
user_name VARCHAR (20) UNIQUE,
password_karyawan VARCHAR (8),
status_karyawan ENUM ('single','menikah'),
no_rekening INT,
id_bank VARCHAR (5),
jenis_kelamin ENUM ('laki-laki','perempuan')
);
SHOW COLUMNS FROM tbl_karyawan;

CREATE TABLE tbl_transaksi(
id_transaksi INT,
no_transaksi VARCHAR (30) PRIMARY KEY,
status_transaksi VARCHAR (10),
tgl_transaksi DATE,
nama_kasir VARCHAR (50),
jenis_pelanggan ENUM ('umum','reseller','grosir'),
waktu_transaksi TIME
);
SHOW COLUMNS FROM tbl_transaksi;

CREATE TABLE tbl_satuan(
id_satuan INT PRIMARY KEY,
nama_satuan VARCHAR (50),
keterangan VARCHAR (20),
status_satuan VARCHAR (10)
);
SHOW COLUMNS FROM tbl_satuan;

CREATE TABLE tbl_barang(
id_barang INT PRIMARY KEY,
barcode VARCHAR (20),
nama_barang VARCHAR (50),
id_satuan INT,
id_rak INT,
stok_barang INT,
harga_barang INT,
status_barang VARCHAR (10),
keterangan VARCHAR (10)
);
SHOW COLUMNS FROM tbl_barang;

CREATE TABLE tbl_bank(
id_bank INT,
nama_bank VARCHAR (20),
status_bank VARCHAR (10)
);
SHOW COLUMNS FROM tbl_bank;

CREATE TABLE tbl_pelanggan(
id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
nik INT,
nama_pelanggan VARCHAR (30),
alamat VARCHAR (100),
no_hp INT,
email VARCHAR (30) UNIQUE,
poin INT,
status_pelanggan VARCHAR (10)
);
SHOW COLUMNS FROM tbl_pelanggan;

CREATE TABLE tbl_gudang(
id_gudang INT PRIMARY KEY AUTO_INCREMENT,
nama_gudang VARCHAR (30),
alamat_gudang VARCHAR (100),
status_gudang VARCHAR (10),
keterangan VARCHAR (10)
);
SHOW COLUMNS FROM tbl_gudang;

CREATE TABLE tbl_pembayaran(
id_pembayaran INT PRIMARY KEY AUTO_INCREMENT,
nama_pembayaran VARCHAR (30),
status_pembayaran VARCHAR (10),
keterangan VARCHAR (10)
);
SHOW COLUMNS FROM tbl_pembayaran;

CREATE TABLE tbl_supplier (
id_supplier INT PRIMARY KEY AUTO_INCREMENT,
nama_suplier VARCHAR (30),
alamat VARCHAR (100),
no_telp INT,
no_rekening INT UNIQUE,
id_bank INT,
status_supplier VARCHAR (10),
keterangan VARCHAR (10)
);
SHOW COLUMNS FROM tbl_supplier;

CREATE TABLE tbl_rak (
id_rak INT PRIMARY KEY AUTO_INCREMENT,
nama_rak VARCHAR (30),
id_gudang INT,
status_rak VARCHAR (10),
keterangan VARCHAR (20)
);
SHOW COLUMNS FROM tbl_rak;

CREATE TABLE tbl_penjualan(
id_penjualan INT PRIMARY KEY AUTO_INCREMENT,
nama_barang VARCHAR (30),
jumlah_barang INT,
harga_barang INT,
nama_satuan VARCHAR (20),
total_harga INT,
total_jumlah INT,
status_penjualan VARCHAR (10),
keterangan VARCHAR (10)
);
SHOW COLUMNS FROM tbl_penjualan;
