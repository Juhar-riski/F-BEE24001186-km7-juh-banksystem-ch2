-- Menampilkan Tabel
SELECT * FROM nasabah;

-- Input data nasabah menggunakan procedure
CREATE OR REPLACE PROCEDURE insert_nasabah(
	n_name VARCHAR,
	n_address VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO nasabah(nasabah_name,nasabah_address)
	VALUES (n_name,n_address);
END;
$$;

CALL insert_nasabah('loki','asgard');
CALL insert_nasabah('thor','asgard');
CALL insert_nasabah('iron','ntb');
CALL insert_nasabah('man','ntt');
CALL insert_nasabah('hulk','papua');
CALL insert_nasabah('wolverine','banten');
CALL insert_nasabah('captain','aceh');
CALL insert_nasabah('hawk','ngawi');
CALL insert_nasabah('thanos','medan');
CALL insert_nasabah('spidy','jakarta');
CALL insert_nasabah('pool','bandung');

-- Update data pada id yang diinginkan
UPDATE nasabah
SET nasabah_name = 'Juhar', nasabah_address = 'aceh'
WHERE id_nasabah = 10;

-- Menghapus data yang diinginkan 
DELETE FROM nasabah
WHERE id_nasabah BETWEEN 5 AND 11;   --Memberi rentang data yang hendak dihapus

