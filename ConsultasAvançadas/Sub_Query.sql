SELECT DISTINCT BAIRRO
FROM TABELA_DE_VENDEDORES;

SELECT DISTINCT BAIRRO
FROM TABELA_DE_CLIENTES
WHERE BAIRRO IN (
	'Copacabana',
	'Jardins',
	'Santo Amaro',
	'Tijuca'
	);

SELECT DISTINCT BAIRRO
FROM TABELA_DE_CLIENTES
WHERE BAIRRO IN
	(SELECT DISTINCT BAIRRO
	FROM TABELA_DE_VENDEDORES);

SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) AS QUANTIDADE 
FROM ITENS_NOTAS_FISCAIS  INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO 
HAVING SUM(INF.QUANTIDADE) > 394000 
ORDER BY SUM(INF.QUANTIDADE) DESC;

SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) AS QUANTIDADE, TP.SABOR
FROM ITENS_NOTAS_FISCAIS  INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, TP.SABOR
HAVING SUM(INF.QUANTIDADE) > 394000 
ORDER BY SUM(INF.QUANTIDADE) DESC;

SELECT DISTINCT SABOR
FROM TABELA_DE_PRODUTOS 
WHERE
	CODIGO_DO_PRODUTO IN (
		SELECT INF.CODIGO_DO_PRODUTO 
		FROM ITENS_NOTAS_FISCAIS INF
		INNER JOIN TABELA_DE_PRODUTOS TP 
		ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
		GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO HAVING SUM(INF.QUANTIDADE) > 394000
	);

SELECT PRECO_DE_LISTA, EMBALAGEM 
FROM TABELA_DE_PRODUTOS;

SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS [PRO�O TOTAL P/ EMBALAGEM]
FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM
ORDER BY SUM(PRECO_DE_LISTA);

-------------

SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS [PRE�O MEDIO P/ EMBALAGEM]
FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM
HAVING AVG(PRECO_DE_LISTA) > 10
ORDER BY AVG(PRECO_DE_LISTA);	

SELECT MEDIA_EMBALAGEM.EMBALAGEM, MEDIA_EMBALAGEM.[PRE�O MEDIO P/ EMBALAGEM]
FROM (
		SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS [PRE�O MEDIO P/ EMBALAGEM]
		FROM TABELA_DE_PRODUTOS
		GROUP BY EMBALAGEM
	) AS MEDIA_EMBALAGEM
WHERE MEDIA_EMBALAGEM.[PRE�O MEDIO P/ EMBALAGEM] <= 10
ORDER BY MEDIA_EMBALAGEM.[PRE�O MEDIO P/ EMBALAGEM];

-------------

SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) AS QUANTIDADE 
FROM ITENS_NOTAS_FISCAIS  INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO 
HAVING SUM(INF.QUANTIDADE) > 394000 
ORDER BY SUM(INF.QUANTIDADE) DESC;

SELECT SOMA_QUANTIDADE.CODIGO_DO_PRODUTO, SOMA_QUANTIDADE.NOME_DO_PRODUTO, SOMA_QUANTIDADE.QUANTIDADE
FROM (
		SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) AS QUANTIDADE 
		FROM ITENS_NOTAS_FISCAIS  INF
		INNER JOIN TABELA_DE_PRODUTOS TP 
		ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
		GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO
	) AS SOMA_QUANTIDADE
WHERE SOMA_QUANTIDADE.QUANTIDADE > 394000
ORDER BY SOMA_QUANTIDADE.QUANTIDADE DESC;