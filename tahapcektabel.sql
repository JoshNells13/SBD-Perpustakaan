-- Memeriksa seluruh tabel
SHOW TABLES;

-- Memeriksa struktur anggota
DESCRIBE anggota;

-- Memeriksa struktur penerbit
DESCRIBE penerbit;

-- Memeriksa struktur penulis
DESCRIBE penulis;

-- Memeriksa constraint dan struktur buku
SHOW CREATE TABLE buku;

-- Memeriksa data buku
SELECT * FROM buku;

-- Memeriksa data anggota
SELECT * FROM anggota;

-- Memeriksa data peminjaman
SELECT * FROM peminjaman;

-- Memeriksa data denda
SELECT * FROM denda;