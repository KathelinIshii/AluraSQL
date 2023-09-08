SELECT DISTINCT BAIRRO
FROM TABELA_DE_CLIENTES;

SELECT DISTINCT BAIRRO
FROM TABELA_DE_VENDEDORES;

SELECT BAIRRO
FROM TABELA_DE_CLIENTES
UNION
SELECT BAIRRO
FROM TABELA_DE_VENDEDORES;
--O UNION aplica um DISTINCT por padr�o, caso voc� n�o queira isso ter� que usar o UNION A	LL

SELECT BAIRRO
FROM TABELA_DE_CLIENTES
UNION ALL
SELECT BAIRRO
FROM TABELA_DE_VENDEDORES;

SELECT BAIRRO, 'CLIENTE' AS ORIGEM
FROM TABELA_DE_CLIENTES
UNION ALL
SELECT BAIRRO, 'VENDEDOR' AS ORIGEM
FROM TABELA_DE_VENDEDORES;