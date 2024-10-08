-- 2nd Action
-- Create and Drop table Nasabah,Account,Transaksi

-- Create Table Nasabah,Account,Transaksi
CREATE TABLE nasabah (
	id_nasabah BIGSERIAL PRIMARY KEY,
	nasabah_name VARCHAR(225) NOT NULL,
	nasabah_address VARCHAR(225) NOT NULL
);

CREATE TABLE account (
	id_account BIGSERIAL PRIMARY KEY,
	id_nasabah INT NOT NULL,
	balance INT NOT NULL,
	CONSTRAINT fk_nasabah FOREIGN KEY(id_nasabah) REFERENCES nasabah(id_nasabah)
);

CREATE TABLE transaksi (
	id_transaksi BIGSERIAL PRIMARY KEY,
	id_account INT NOT NULL,
	withdraw INT DEFAULT NULL,
	deposit INT DEFAULT NULL,
	CONSTRAINT fk_account FOREIGN KEY(id_account) REFERENCES account(id_account)
);


-- Drop All Table
DROP TABLE transaksi;
DROP TABLE account;
DROP TABLE nasabah;

