SELECT CONVERT(VARCHAR(10), GETDATE(), 121);

SELECT CONVERT(VARCHAR(30), GETDATE(), 121);
--Data para texto

SELECT DATA_DE_NASCIMENTO, CONVERT(VARCHAR(30), DATA_DE_NASCIMENTO, 101) 
FROM TABELA_DE_CLIENTES;

SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA
FROM TABELA_DE_PRODUTOS;

SELECT NOME_DO_PRODUTO, CONCAT('O pre�o de lista �: ', PRECO_DE_LISTA) as [PRE�O]
FROM TABELA_DE_PRODUTOS;
--Convers�o impl�cita

SELECT NOME_DO_PRODUTO, CONCAT('O pre�o de lista �: ', CAST(PRECO_DE_LISTA AS VARCHAR(10))) as [PRE�O]
FROM TABELA_DE_PRODUTOS;
--Convers�o explicita

-------------

SELECT * FROM TABELA_DE_CLIENTES;

SELECT * FROM NOTAS_FISCAIS;

SELECT * FROM ITENS_NOTAS_FISCAIS;

SELECT 
	CONCAT('O cliente ', CLIENTES.NOME, ' comprou ', SUM(INF.PRECO), ' no ano de ', YEAR(NF.DATA_VENDA)) AS INFO
FROM TABELA_DE_CLIENTES CLIENTES
INNER JOIN NOTAS_FISCAIS NF ON NF.CPF = CLIENTES.CPF
INNER JOIN ITENS_NOTAS_FISCAIS INF ON INF.NUMERO = NF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CLIENTES.NOME, YEAR(NF.DATA_VENDA)
ORDER BY CLIENTES.NOME 