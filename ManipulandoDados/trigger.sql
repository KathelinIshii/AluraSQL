CREATE TABLE TAB_FATURAMENTO
(DATA_VENDA DATE NULL,
TOTAL_VENDA DECIMAL(30,2) NULL);

SELECT
	ID_PRODUTOS_ITENS,
	ID_VENDEDORES_ITENS,
	QUANTIDE, 
	PRE�O
FROM ITENS_VENDIDOS;

SELECT * FROM TABELA_VENDAS;

SELECT
	SUM(IV.PRE�O * IV.QUANTIDE) AS TOTAL_VENDA,
	TV.DATA_VENDA
FROM TABELA_VENDAS TV
INNER JOIN ITENS_VENDIDOS IV
ON TV.ID_TABELA_VENDAS = IV.ID_VENDEDORES_ITENS
GROUP BY TV.DATA_VENDA

INSERT INTO ITENS_VENDIDOS
VALUES
	('235', '1022450', 10, 25.2),
	('238', '243083', 3, 10),
	('238', '746596', 50, 310.90)

INSERT INTO TABELA_VENDAS
VALUES
	('0101', '2018-05-15', '94387575700', '238', 0.8)

INSERT INTO TAB_FATURAMENTO
	SELECT
		TV.DATA_VENDA,
		SUM(IV.PRE�O * IV.QUANTIDE) AS TOTAL_VENDA
	FROM TABELA_VENDAS TV
	INNER JOIN ITENS_VENDIDOS IV
	ON TV.ID_TABELA_VENDAS = IV.ID_VENDEDORES_ITENS
	GROUP BY TV.DATA_VENDA

DROP TABLE TAB_FATURAMENTE;

SELECT * FROM TAB_FATURAMENTO;

SELECT * FROM ITENS_VENDIDOS;

SELECT * FROM TABELA_VENDAS;

SELECT * FROM PRODUTOS;
---------------------------------
SELECT * FROM TAB_FATURAMENTO;

INSERT INTO ITENS_VENDIDOS
VALUES
	('235', '1004327', 5, 200)

INSERT INTO TABELA_VENDAS
VALUES
	('0111', '2017-05-15', '7771579779', '235', 0.5)

DELETE FROM TAB_FATURAMENTO;

INSERT INTO TAB_FATURAMENTO
	SELECT
		TV.DATA_VENDA,
		SUM(IV.PRE�O * IV.QUANTIDE) AS TOTAL_VENDA
	FROM TABELA_VENDAS TV
	INNER JOIN ITENS_VENDIDOS IV
	ON TV.ID_VENDEDORES = IV.ID_VENDEDORES_ITENS
	GROUP BY TV.DATA_VENDA;

SELECT * FROM TAB_FATURAMENTO;

---------------------------------

CREATE TRIGGER TG_ITENS_VENDIDOS
ON [dbo].[ITENS_VENDIDOS]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
	DELETE FROM TAB_FATURAMENTO

	INSERT INTO TAB_FATURAMENTO
		SELECT
			TV.DATA_VENDA,
			SUM(IV.PRE�O * IV.QUANTIDE) AS TOTAL_VENDA
		FROM TABELA_VENDAS TV
		INNER JOIN ITENS_VENDIDOS IV
		ON TV.ID_VENDEDORES = IV.ID_VENDEDORES_ITENS
		GROUP BY TV.DATA_VENDA
END;


SELECT * FROM TAB_FATURAMENTO;

INSERT INTO ITENS_VENDIDOS
VALUES
	('235', '838819', 5, 1000)

INSERT INTO TABELA_VENDAS
VALUES
	('0112', '2017-05-15', '7771579779', '235', 0.5)

UPDATE ITENS_VENDIDOS SET QUANTIDE = 200 WHERE ID_PRODUTOS_ITENS  = '746596'

DELETE FROM ITENS_VENDIDOS WHERE ID_PRODUTOS_ITENS = '746596'
