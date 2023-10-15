CREATE TABLE TB_PADRAO
	(ID INT IDENTITY(1,1) NOT NULL,
	DESCRITOR VARCHAR(20) NULL,
	ENDERECO VARCHAR(20) NULL,
	CIDADE VARCHAR(20)	DEFAULT 'RIO DE JANEIRO',
	DATA_CRIACAO DATE DEFAULT GETDATE());

INSERT INTO TB_PADRAO
	VALUES 
		('CLIENTE A', 'RUA A', 'S�O PAULO', '2018-04-30');

SELECT * FROM TB_PADRAO

INSERT INTO TB_PADRAO (DESCRITOR, ENDERECO)
	VALUES
		('CLIENTE B', 'RUA B'),
		('CLIENTE C', 'RUA C');

INSERT INTO TB_PADRAO (DESCRITOR)
	VALUES	
		('CLIENTE K');