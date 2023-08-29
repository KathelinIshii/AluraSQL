SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA
FROM TABELA_DE_PRODUTOS
WHERE SABOR LIKE 'Manga';

SELECT 
	NOME_DO_PRODUTO, 
	PRECO_DE_LISTA,
	CASE 
		WHEN PRECO_DE_LISTA > 12 THEN 'CARO'
		WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA <= 12 THEN 'NORMAL'
		ELSE 'BARATO' 
	END AS [CLASSIFICAÇÃO]
FROM TABELA_DE_PRODUTOS
WHERE SABOR LIKE 'Manga'
ORDER BY PRECO_DE_LISTA;

--SELECT 
--	CASE 
--		WHEN PRECO_DE_LISTA > 12 THEN 'CARO'
--		WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA <= 12 THEN 'NORMAL'
--		ELSE 'BARATO' 
--	END AS [CLASSIFICAÇÃO],
--	COUNT(*) AS [NÚMERO DE PRODUTOS]
--FROM TABELA_DE_PRODUTOS
--GROUP BY [CLASSIFICAÇÃO];

--Tem que fazer como no ex abaixo, eu repito a expressão de classificação
--No GROUP BY eu não ponho o AS

SELECT 
	CASE 
		WHEN PRECO_DE_LISTA > 12 THEN 'CARO'
		WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA <= 12 THEN 'NORMAL'
		ELSE 'BARATO' 
	END AS [CLASSIFICAÇÃO],
	COUNT(*) AS [NÚMERO DE PRODUTOS]
FROM TABELA_DE_PRODUTOS
GROUP BY CASE 
		WHEN PRECO_DE_LISTA > 12 THEN 'CARO'
		WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA <= 12 THEN 'NORMAL'
		ELSE 'BARATO' 
	END;

