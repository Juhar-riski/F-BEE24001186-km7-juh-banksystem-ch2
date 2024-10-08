-- 6th Action

-- Menampilkan tabel
SELECT * FROM transaksi;

-- Input data ke tabel
INSERT INTO transaksi(id_account,withdraw,deposit) 
VALUES 
	('2',NULL,'300000'),
	('4','200000','500000'),
	('5','500000',NULL),
	('1',NULL,'500000'),
	('3','200000',NULL),
	('10','500000','300000'),
	('11','200000','200000'),
	('7','100000','200000'),
	('9','200000','500000'),
	('8','200000','300000'),
	('6','400000','500000');

-- Update data deposit & withdraw menggunakan call procedure 
-- update_transaksi yang telah dibuat
CALL update_transaksi(1,null,null);

-- Menghapus data pada id yang diinginkan
DELETE FROM transaksi
WHERE id_transaksi = 10;