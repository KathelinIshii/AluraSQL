/*Com o COUNT eu estou contando o número de linhas de uma tabela*/
SELECT COUNT (*) FROM TABELA_DE_CLIENTES;
SELECT COUNT (*) FROM TABELA_DE_PRODUTOS;
SELECT COUNT (*) FROM TABELA_DE_CLIENTES;
SELECT COUNT (*) FROM NOTAS_FISCAIS;
SELECT COUNT (*) FROM ITENS_NOTAS_FISCAIS;

SELECT * FROM TABELA_DE_CLIENTES;

SELECT CPF, NOME, BAIRRO, CIDADE FROM TABELA_DE_CLIENTES;

SELECT CPF AS IDENTIFICADOR, NOME AS [NOME DE CLIENTES], BAIRRO, CIDADE FROM TABELA_DE_CLIENTES; 
/*O AS serve para quando eu quero dar outro nome para a coluna, mas lembrando que ele não modifica o real nome da coluna*/

SELECT CPF AS IDENTIFICADOR, NOME AS [NOME DE CLIENTES], BAIRRO, CIDADE FROM TABELA_DE_CLIENTES TDC; 
/*Caso eu queria dar um outro nome para a tabela, eu não preco colocar o AS, eu posso só escrever como no exemplo acima*/

SELECT TDC.CPF, TDC.NOME, TDC.BAIRRO FROM TABELA_DE_CLIENTES TDC;

SELECT TDC.* FROM TABELA_DE_CLIENTES TDC;
/*Eu normalmente uso o Aliases para quando tenho o mesmo nome em mais de uma tabela e não quero ter que escrever o nome inteiro da tabela, como no exemplo abaixo*/

SELECT TABELA_DE_CLIENTES.CPF, TABELA_DE_CLIENTES.NOME, TABELA_DE_VENDEDORES.NOME FROM TABELA_DE_CLIENTES, TABELA_DE_VENDEDORES;
/*Aqui eu estou colocando o nome da tabela na frente da coluna para poder especificar qual informação eu quero, já que estou usando duas colunas em 
diferentes tabelas que possuem o mesmo nome*/

SELECT * FROM TABELA_DE_PRODUTOS;

SELECT * FROM TABELA_DE_PRODUTOS WHERE 1 = 1;

SELECT * FROM TABELA_DE_PRODUTOS WHERE 1 = 0;

SELECT * FROM TABELA_DE_PRODUTOS WHERE CODIGO_DO_PRODUTO = '1004327';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja';

SELECT * FROM TABELA_DE_PRODUTOS WHERE EMBALAGEM = 'PET';