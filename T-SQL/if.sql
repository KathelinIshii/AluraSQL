--Para ver se a tabela existe antes de dropar ela

IF OBJECT_ID('TESTE', 'U') IS NOT NULL
	DROP TABLE TESTE;

IF OBJECT_ID('TESTE', 'U') IS NULL
CREATE TABLE TESTE (
	ID VARCHAR(10)
);