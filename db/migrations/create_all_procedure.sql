-- 3rd Action
-- Create Procedure untuk input/insert data pada tabel nasabah
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

-- Create Procedure untuk Update data pada tabel transaksi mengandung 
-- perubahan withdraw dan deposit yang ingin diubah 
CREATE OR REPLACE PROCEDURE update_transaksi(
    t_id_transaksi INT,
    t_id_account INT,
    t_withdraw INT,
	t_deposit INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE transaksi
    SET id_account = t_id_account, withdraw = t_withdraw, deposit = t_deposit
    WHERE id_transaksi = t_id_transaksi;
END;
$$;
