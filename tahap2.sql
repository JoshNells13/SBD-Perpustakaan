
-- DATA PENERBIT


INSERT INTO penerbit
    (id, nama, kota, no_telepon)
VALUES
    (1, 'Gramedia Pustaka Utama', 'Jakarta', '0215551001'),
    (2, 'Bentang Pustaka', 'Yogyakarta', '0274555002'),
    (3, 'Informatika Bandung', 'Bandung', '0225555003'),
    (4, 'Lentera Dipantara', 'Jakarta', '0215555004');



-- DATA PENULIS


INSERT INTO penulis
    (id, nama, negara_asal)
VALUES
    (1, 'Andrea Hirata', 'Indonesia'),
    (2, 'Pramoedya Ananta Toer', 'Indonesia'),
    (3, 'Tere Liye', 'Indonesia'),
    (4, 'Rinaldi Munir', 'Indonesia'),
    (5, 'Leoni Lidya', 'Indonesia');



-- DATA BUKU


INSERT INTO buku
    (id, isbn, judul, tahun_terbit,
     jumlah_halaman, stok, penerbit_id)
VALUES
    ('BK0001', '9786021000014', 'Laskar Pelangi',
     2005, 529, 5, 2),

    ('BK0002', '9786021000021', 'Bumi Manusia',
     2005, 535, 3, 4),

    ('BK0003', '9786021000038', 'Bumi',
     2014, 440, 4, 1),

    ('BK0004', '9786021000045', 'Algoritma dan Pemrograman',
     2016, 458, 6, 3),

    ('BK0005', '9786021000052', 'Sang Pemimpi',
     2006, 292, 2, 2);



-- DATA RELASI BUKU DAN PENULIS


INSERT INTO buku_penulis (buku_id, penulis_id)
VALUES
    ('BK0001', 1),
    ('BK0002', 2),
    ('BK0003', 3),
    ('BK0004', 4),
    ('BK0004', 5),
    ('BK0005', 1);



-- DATA ANGGOTA


INSERT INTO anggota
    (no_anggota, nama, tanggal_lahir, alamat,
     no_telepon, jenis_kelamin, status_anggota)
VALUES
    ('5026231001', 'Rani Putri', '2004-03-15',
     'Jl. Keputih Tegal No. 12, Surabaya',
     '081234567801', 'P', 'Aktif'),

    ('5026231002', 'Budi Santoso', '2003-11-02',
     'Jl. Gubeng Pojok No. 5, Surabaya',
     '081234567802', 'L', 'Aktif'),

    ('5026231003', 'Dewi Anggraini', '2004-07-21',
     'Jl. Dharmahusada No. 20, Surabaya',
     '081234567803', 'P', 'Aktif'),

    ('5026231004', 'Ahmad Fauzi', '2002-12-09',
     'Jl. Mulyorejo No. 3, Surabaya',
     '081234567804', 'L', 'Nonaktif'),

    ('5026231005', 'Siti Rahmawati', '2003-05-28',
     'Jl. Ngagel Jaya No. 8, Surabaya',
     '081234567805', 'P', 'Aktif');



-- DATA PETUGAS


INSERT INTO petugas
    (id, nama, jabatan, no_telepon)
VALUES
    (1, 'Hendra Wijaya', 'Pustakawan', '081345678901'),
    (2, 'Lestari Wulandari', 'Staf Sirkulasi', '081345678902'),
    (3, 'Bambang Pratama', 'Staf Katalog', '081345678903');



-- DATA PEMINJAMAN


INSERT INTO peminjaman
    (id, waktu_pinjam, tanggal_jatuh_tempo,
     tanggal_kembali, status_peminjaman,
     anggota_no_anggota, buku_id, petugas_id)
VALUES
    ('PJ0001', '2026-09-14 09:00:00',
     '2026-09-21', '2026-09-20', 'Dikembalikan',
     '5026231001', 'BK0001', 1),

    ('PJ0002', '2026-09-15 10:30:00',
     '2026-09-22', NULL, 'Terlambat',
     '5026231002', 'BK0002', 2),

    ('PJ0003', '2026-09-20 13:15:00',
     '2026-09-27', '2026-09-29', 'Dikembalikan',
     '5026231003', 'BK0003', 1),

    ('PJ0004', '2026-10-08 09:00:00',
     '2026-10-15', NULL, 'Dipinjam',
     '5026231001', 'BK0005', 3),

    ('PJ0005', '2026-10-10 11:00:00',
     '2026-10-17', NULL, 'Dipinjam',
     '5026231005', 'BK0004', 1),

    ('PJ0006', '2026-09-25 14:20:00',
     '2026-10-02', NULL, 'Terlambat',
     '5026231003', 'BK0004', 2);