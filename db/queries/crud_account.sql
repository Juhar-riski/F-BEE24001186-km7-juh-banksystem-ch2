-- 5th Action

-- Menampilkan tabel account
SELECT * FROM account;

-- Insert dummy data menggunakan generate series
INSERT INTO account (id_nasabah,balance)
SELECT
	ROUND(RANDOM() * 11),
	ROUND(RANDOM() * (1000000-500000)+500000)  -- Untuk rentang balance dari 500.000 ke 1.000.000
FROM GENERATE_SERIES(1,11); 

-- Update data pada id yang diinginkan
UPDATE account
SET id_nasabah = '2', balance = '700000'
WHERE id_account = 1;

-- Menghapus data pada id yang diinginkan
DELETE FROM account
WHERE id_account = 1;