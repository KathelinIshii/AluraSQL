SELECT DISTINCT BAIRRO
FROM TABELA_DE_VENDEDORES;

SELECT DISTINCT BAIRRO
FROM TABELA_DE_CLIENTES
WHERE BAIRRO IN (
	'Copacabana',
	'Jardins',
	'Santo Amaro',
	'Tijuca');

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