
-- NOMOR 1: MEMBUAT DATABASE


CREATE DATABASE perpustakaan_its;

USE perpustakaan_its;



-- MEMBUAT TABEL penerbit


CREATE TABLE penerbit (
    id INT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    kota VARCHAR(50) NOT NULL,
    no_telepon VARCHAR(20) NOT NULL
) ENGINE = InnoDB;



-- MEMBUAT TABEL penulis


CREATE TABLE penulis (
    id INT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    negara_asal VARCHAR(50) NOT NULL
) ENGINE = InnoDB;



-- MEMBUAT TABEL buku


CREATE TABLE buku (
    id VARCHAR(10) PRIMARY KEY,
    isbn VARCHAR(13) NOT NULL,
    judul VARCHAR(150) NOT NULL,
    tahun_terbit INT NOT NULL,
    jumlah_halaman INT NOT NULL,
    stok INT NOT NULL,
    penerbit_id INT NOT NULL,

    CONSTRAINT fk_buku_penerbit
        FOREIGN KEY (penerbit_id)
        REFERENCES penerbit(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;



-- MEMBUAT TABEL buku_penulis


CREATE TABLE buku_penulis (
    buku_id VARCHAR(10) NOT NULL,
    penulis_id INT NOT NULL,

    PRIMARY KEY (buku_id, penulis_id),

    CONSTRAINT fk_buku_penulis_buku
        FOREIGN KEY (buku_id)
        REFERENCES buku(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT fk_buku_penulis_penulis
        FOREIGN KEY (penulis_id)
        REFERENCES penulis(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;



-- MEMBUAT TABEL anggota


CREATE TABLE anggota (
    no_anggota VARCHAR(20) PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    no_telepon VARCHAR(20) NOT NULL,
    jenis_kelamin CHAR(1) NOT NULL,
    status_anggota VARCHAR(20) NOT NULL
) ENGINE = InnoDB;



-- MEMBUAT TABEL petugas


CREATE TABLE petugas (
    id INT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    jabatan VARCHAR(50) NOT NULL,
    no_telepon VARCHAR(20) NOT NULL
) ENGINE = InnoDB;



-- MEMBUAT TABEL peminjaman


CREATE TABLE peminjaman (
    id VARCHAR(10) PRIMARY KEY,
    waktu_pinjam DATETIME NOT NULL,
    tanggal_jatuh_tempo DATE NOT NULL,
    tanggal_kembali DATE NULL,
    status_peminjaman VARCHAR(20) NOT NULL,
    anggota_no_anggota VARCHAR(20) NOT NULL,
    buku_id VARCHAR(10) NOT NULL,
    petugas_id INT NOT NULL,

    CONSTRAINT fk_peminjaman_anggota
        FOREIGN KEY (anggota_no_anggota)
        REFERENCES anggota(no_anggota)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT fk_peminjaman_buku
        FOREIGN KEY (buku_id)
        REFERENCES buku(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    CONSTRAINT fk_peminjaman_petugas
        FOREIGN KEY (petugas_id)
        REFERENCES petugas(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;



-- MEMBUAT TABEL denda


CREATE TABLE denda (
    id VARCHAR(10) PRIMARY KEY,
    jumlah INT NOT NULL,
    jenis_denda VARCHAR(50) NOT NULL,
    status_bayar VARCHAR(20) NOT NULL,
    peminjaman_id VARCHAR(10) NOT NULL UNIQUE,

    CONSTRAINT fk_denda_peminjaman
        FOREIGN KEY (peminjaman_id)
        REFERENCES peminjaman(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE = InnoDB;