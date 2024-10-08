-- 7th Action

-- Pada tabel nasabah sudah saya gandakan data dengan cara running
-- ulang procedure hingga mendapatkan total data 1000 baris

-- buat index
CREATE INDEX idx_nasabah_on_nasabah_name ON nasabah(nasabah_name);

-- Hasil pencarian sebelum memakai index ada dikisaran = 125 ms
-- sedudah menngunnakan index hasilnya = 65 ms

SELECT * FROM nasabah WHERE nasabah_name = 'loki';

-- Hapus index
DROP INDEX idx_nasabah_on_nasabah_name;

-- Menggabungkan tabel nasabah dan account untuk melihat 
-- data nasabah beserta balance menggunakan inner join
SELECT 
    n.id_nasabah,
    n.nasabah_name,
    a.balance
FROM nasabah n
INNER JOIN account a
    ON n.id_nasabah = a.id_account;
