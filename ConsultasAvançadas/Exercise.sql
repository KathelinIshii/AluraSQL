SELECT * FROM TABELA_DE_CLIENTES;

SELECT * FROM NOTAS_FISCAIS;

SELECT * FROM ITENS_NOTAS_FISCAIS;

SELECT TC.NOME, TC.VOLUME_DE_COMPRA, NF.DATA_VENDA, INF.QUANTIDADE, INF.PRECO
FROM NOTAS_FISCAIS NF
INNER JOIN TABELA_DE_CLIENTES TC
ON NF.CPF = TC.CPF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
ORDER BY TC.NOME;

SELECT TC.NOME, FLOOR(SUM(INF.PRECO)) AS [PRE�O], TC.VOLUME_DE_COMPRA, MONTH(NF.DATA_VENDA) AS [M�S]
FROM NOTAS_FISCAIS NF
INNER JOIN TABELA_DE_CLIENTES TC
ON NF.CPF = TC.CPF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY TC.NOME, MONTH(NF.DATA_VENDA), TC.VOLUME_DE_COMPRA
HAVING FLOOR(SUM(INF.PRECO)) > TC.VOLUME_DE_COMPRA
ORDER BY TC.NOME;

------
	
SELECT 
	NF.CPF,
	CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS [M�S/ANO], 
	SUM(INF.QUANTIDADE) AS [QUANTIDADE TOTAL]
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY
	NF.CPF,
	CONVERT(VARCHAR(7), NF.DATA_VENDA, 120);

SELECT CPF, NOME, VOLUME_DE_COMPRA
FROM TABELA_DE_CLIENTES;
GO


SELECT
	TC.CPF,
	TC.NOME,
	TC.VOLUME_DE_COMPRA, 
	[TOTAL VENDA].[M�S/ANO],
	[TOTAL VENDA].[QUANTIDADE TOTAL],
	(CASE 
		WHEN 	TC.VOLUME_DE_COMPRA >= [TOTAL VENDA].[QUANTIDADE TOTAL]
			THEN 'VENDAS VALIDAS'
		ELSE 'VENDAS INVALIDAS' 
	END) AS RESULTADO
FROM TABELA_DE_CLIENTES TC
INNER JOIN(
	SELECT 
		NF.CPF,
		CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS [M�S/ANO], 
		SUM(INF.QUANTIDADE) AS [QUANTIDADE TOTAL]
	FROM NOTAS_FISCAIS NF
	INNER JOIN ITENS_NOTAS_FISCAIS INF
	ON NF.NUMERO = INF.NUMERO
	GROUP BY
		NF.CPF,
		CONVERT(VARCHAR(7), NF.DATA_VENDA, 120)
) [TOTAL VENDA]
ON [TOTAL VENDA].CPF = TC.CPF
WHERE [TOTAL VENDA].[M�S/ANO] = '2015-01';
GO
