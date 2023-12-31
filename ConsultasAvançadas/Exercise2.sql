SELECT 
	TP.SABOR, 
	YEAR(NF.DATA_VENDA) AS ANO,
	SUM(INF.QUANTIDADE) AS [VENDA ANO]
FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN TABELA_DE_PRODUTOS TP
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2015
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)
ORDER BY [VENDA ANO] DESC;

SELECT 
	YEAR(NF.DATA_VENDA) AS ANO,
	SUM(INF.QUANTIDADE) AS [VENDA TOTAL ANO]
FROM ITENS_NOTAS_FISCAIS INF
INNER JOIN NOTAS_FISCAIS NF
ON INF.NUMERO = NF.NUMERO
WHERE YEAR(NF.DATA_VENDA) = 2015
GROUP BY YEAR(NF.DATA_VENDA);

GO

SELECT
	VN.SABOR,
	VN.ANO,
	VN.[VENDA ANO],
	VTN.[VENDA TOTAL ANO],
	(VN.[VENDA ANO]/VTN.[VENDA TOTAL ANO]) * 100 AS PERCENTUAL
FROM (
		SELECT 
		TP.SABOR, 
		YEAR(NF.DATA_VENDA) AS ANO,
		SUM(INF.QUANTIDADE) AS [VENDA ANO]
	FROM ITENS_NOTAS_FISCAIS INF
	INNER JOIN TABELA_DE_PRODUTOS TP
	ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
	INNER JOIN NOTAS_FISCAIS NF
	ON INF.NUMERO = NF.NUMERO
	WHERE YEAR(NF.DATA_VENDA) = 2015
	GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)
	) VN
INNER JOIN (
	SELECT 
		YEAR(NF.DATA_VENDA) AS ANO,
		SUM(INF.QUANTIDADE) AS [VENDA TOTAL ANO]
	FROM ITENS_NOTAS_FISCAIS INF
	INNER JOIN NOTAS_FISCAIS NF
	ON INF.NUMERO = NF.NUMERO
	WHERE YEAR(NF.DATA_VENDA) = 2015
	GROUP BY YEAR(NF.DATA_VENDA)
	) VTN
ON VTN.ANO = VN.ANO
ORDER BY VN.[VENDA ANO] DESC 
;

GO

SELECT
	VN.SABOR,
	VN.ANO,
	VN.[VENDA ANO],
	ROUND((CONVERT(FLOAT, VN.[VENDA ANO])/ CONVERT(FLOAT, VTN.[VENDA TOTAL ANO]))  * 100  ,2)AS PERCENTUAL
FROM (
	SELECT 
		TP.SABOR, 
		YEAR(NF.DATA_VENDA) AS ANO,
		SUM(INF.QUANTIDADE) AS [VENDA ANO]
	FROM ITENS_NOTAS_FISCAIS INF
	INNER JOIN TABELA_DE_PRODUTOS TP
	ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
	INNER JOIN NOTAS_FISCAIS NF
	ON INF.NUMERO = NF.NUMERO
	WHERE YEAR(NF.DATA_VENDA) = 2016
	GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)
	) VN
INNER JOIN (
	SELECT 
		YEAR(NF.DATA_VENDA) AS ANO,
		SUM(INF.QUANTIDADE) AS [VENDA TOTAL ANO]
	FROM ITENS_NOTAS_FISCAIS INF
	INNER JOIN NOTAS_FISCAIS NF
	ON INF.NUMERO = NF.NUMERO
	WHERE YEAR(NF.DATA_VENDA) = 2016
	GROUP BY YEAR(NF.DATA_VENDA)
	) VTN
ON VTN.ANO = VN.ANO
ORDER BY VN.[VENDA ANO] DESC 
;

GO

SELECT
	VN.ANO,
	VN.[VENDA ANO],
	VN.TAMANHO,
	ROUND((CONVERT(FLOAT, VN.[VENDA ANO])/ CONVERT(FLOAT, VTN.[VENDA TOTAL ANO]))  * 100  ,2)AS PERCENTUAL
FROM (
	SELECT 
		YEAR(NF.DATA_VENDA) AS ANO,
		SUM(INF.QUANTIDADE) AS [VENDA ANO],
		TP.TAMANHO
	FROM ITENS_NOTAS_FISCAIS INF
	INNER JOIN TABELA_DE_PRODUTOS TP
	ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
	INNER JOIN NOTAS_FISCAIS NF
	ON INF.NUMERO = NF.NUMERO
	WHERE YEAR(NF.DATA_VENDA) = 2016
	GROUP BY YEAR(NF.DATA_VENDA), TP.TAMANHO
	) VN
INNER JOIN (
	SELECT 
		YEAR(NF.DATA_VENDA) AS ANO,
		SUM(INF.QUANTIDADE) AS [VENDA TOTAL ANO]
	FROM ITENS_NOTAS_FISCAIS INF
	INNER JOIN NOTAS_FISCAIS NF
	ON INF.NUMERO = NF.NUMERO
	WHERE YEAR(NF.DATA_VENDA) = 2016
	GROUP BY YEAR(NF.DATA_VENDA)
	) VTN
ON VTN.ANO = VN.ANO
ORDER BY VN.[VENDA ANO] DESC 
;

GO

SELECT TAMANHO
FROM TABELA_DE_PRODUTOS;

UPDATE TABELA_DE_PRODUTOS 
SET TAMANHO = '2000 ml'
WHERE TAMANHO = '2 Litros'

UPDATE TABELA_DE_PRODUTOS 
SET TAMANHO = '1500 ml'
WHERE TAMANHO = '1,5 Litros'

UPDATE TABELA_DE_PRODUTOS 
SET TAMANHO = '1000 ml'
WHERE TAMANHO = '1 Litro'