SELECT * FROM TABELA_DE_CLIENTES;

SELECT NOME, LOWER(NOME) AS [NOME MINUSCULO], UPPER(NOME) AS [NOME MAIUSCULO]
FROM TABELA_DE_CLIENTES;

SELECT NOME, CONCAT(ENDERECO_1, ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO, '-', CEP) AS [ENDERE�O COMPLETO]
FROM TABELA_DE_CLIENTES;

--Eu posso juntar as informa��es dessas duas formas, como no exemplo acima e como no exemplo abaixo.

SELECT NOME, ENDERECO_1+ ' '+ BAIRRO+ ' '+ CIDADE+ ' '+ ESTADO+ '-'+ CEP AS [ENDERE�O COMPLETO]
FROM TABELA_DE_CLIENTES;

SELECT * FROM TABELA_DE_PRODUTOS;

SELECT NOME_DO_PRODUTO, LEFT(NOME_DO_PRODUTO, 5) AS [OS 5 PRIMEIROS CHAR]
FROM TABELA_DE_PRODUTOS;

SELECT TAMANHO, REPLACE((REPLACE(TAMANHO, 'Litros', 'L')),'Litro', 'L') AS [TAMANHO MODIFICADO]
FROM TABELA_DE_PRODUTOS;

------------

SELECT NOME
FROM TABELA_DE_CLIENTES;

SELECT NOME, SUBSTRING(NOME, 1, CHARINDEX(' ', NOME)) AS [PRIMEIRO NOME]
FROM TABELA_DE_CLIENTES;

--No c�digo acima estamos usando a SUBSTRING para poder selecionar a primeira letra de casa coluna e usando o CHARINDEX para poder pegar tudo que est� antes do espa�o

SELECT NOME, SUBSTRING(NOME, 1, CHARINDEX(' ', NOME) - 1 ) AS [PRIMEIRO NOME]
FROM TABELA_DE_CLIENTES;

--Nesse onde eu coloco o -1, � para poder tirar o espa�o 

SELECT
	SUBSTRING(NOME, 1, CHARINDEX(' ', NOME) - 1 ) AS [PRIMEIRO NOME],
	SUBSTRING(NOME,
                 CHARINDEX(' ', NOME) + 1,
                 LEN(NOME) - CHARINDEX(' ', NOME)) AS [�LTIMO NOME]
FROM TABELA_DE_CLIENTES;

------------

SELECT GETDATE() AS [DATA DE HOJE], DATEADD(DAY, 10, GETDATE()) AS [DATA DE HOJE DOMANDO 10 DIAS];

SELECT 
	GETDATE() AS [DATA DE HOJE], 
	DATEADD(DAY, -48, GETDATE()) AS [DATA DE HOJE MENOS 48 DIAS],
	DATEDIFF(DAY, '2023-01-01', GETDATE()) AS [DIAS DESDE O PRIMEIRO DIA DO ANO];

SELECT 
	GETDATE() AS [DATA DE HOJE], 
	DATEADD(DAY, -48, GETDATE()) AS [DATA DE HOJE MENOS 48 DIAS],
	DATEDIFF(HOUR, '2023-01-01', GETDATE()) AS [HORAS DESDE O PRIMEIRO DIA DO ANO];

SELECT 
	GETDATE() AS [DATA DE HOJE], 
	DATEADD(DAY, -48, GETDATE()) AS [DATA DE HOJE MENOS 48 DIAS],
	DATEDIFF(MONTH, '2023-01-01', GETDATE()) AS [M�S DESDE O PRIMEIRO DIA DO ANO];

SELECT DATEPART(DAY, GETDATE()) AS [DIA DE HOJE], GETDATE() AS [DATA DE HOJE];

SELECT ISDATE(DATETIMEFROMPARTS(2023,01,02,00,00,00,00)) AS [DATA VALIDA?];

------------

SELECT * FROM TABELA_DE_CLIENTES;

SELECT NOME, DATA_DE_NASCIMENTO
FROM TABELA_DE_CLIENTES;

SELECT NOME,
	DATENAME(YY, DATA_DE_NASCIMENTO) AS ANO,
	DATENAME(MM, DATA_DE_NASCIMENTO) AS [M�S],
	DATENAME(DD, DATA_DE_NASCIMENTO) AS DIA,
	DATENAME(WEEKDAY, DATA_DE_NASCIMENTO) AS [DIA DA SEMANA]
FROM TABELA_DE_CLIENTES;

SELECT NOME + ' nasceu em ' + 
	DATENAME (WEEKDAY,DATA_DE_NASCIMENTO) + ',' +
	DATENAME (DAY,DATA_DE_NASCIMENTO) + ' de ' +
	DATENAME(MONTH, DATA_DE_NASCIMENTO) + ' de ' +
	DATENAME(YEAR, DATA_DE_NASCIMENTO) AS [DATA EXTENSO]
FROM TABELA_DE_CLIENTES;

------------

SELECT ROUND(35.4145, 2) [PEGO 2 CASAS DEPOIS DA VIRGULA] , ROUND(35.41, 2);

SELECT CEILING(35.4145) [UM A MAIS], FLOOR(35.4145) [UM A MENOS];

SELECT POWER(2,2) [ELEVADO], EXP(3) [EXPONENCIAL DE 3], SQRT(4) [RAIZ QUADRADA];

SELECT ABS(10) [QUALQUER N�MERO NEGATIVO EM POSITIVO], ABS(-10) [QUALQUER N�MERO NEGATIVO EM POSITIVO];

------------

SELECT * FROM NOTAS_FISCAIS;

SELECT * FROM ITENS_NOTAS_FISCAIS;

SELECT IMPOSTO, DATA_VENDA
FROM NOTAS_FISCAIS;

SELECT QUANTIDADE, PRECO
FROM ITENS_NOTAS_FISCAIS;

SELECT 
	DATENAME(YY, DATA_VENDA) AS [ANO DE 2016], 
	IMPOSTO
FROM NOTAS_FISCAIS
WHERE DATA_VENDA > '2016' AND DATA_VENDA < '2017';

--Calcule o valor do imposto pago no ano de 2016, arredondando para o menor inteiro.
