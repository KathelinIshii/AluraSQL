/*N�o repete as linhas, mostra as linhas distintas/diferentes*/

SELECT * FROM TABELA_DE_CLIENTES;

SELECT DISTINCT BAIRRO, CIDADE FROM TABELA_DE_CLIENTES;
/*Quando eu uso o DISTINCT desse jeito, ele vai pegar os arquivos distintos nas duas colunas que est�o acima, ou seja, o que � diferente tanto no bairro quando na cidade*/

SELECT DISTINCT CIDADE, BAIRRO FROM TABELA_DE_CLIENTES;

SELECT * FROM TABELA_DE_PRODUTOS;

SELECT EMBALAGEM FROM TABELA_DE_PRODUTOS;

SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS;

SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS WHERE SABOR = ('Maca') ;

SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE 'Maca' ;
--Quando eu n�o coloco % no LIKE, ele funciona como um = s� que para texto

SELECT DISTINCT EMBALAGEM, SABOR FROM TABELA_DE_PRODUTOS;
--Assim eu vou ver as combina��es diferentes para ambos os campos

SELECT DISTINCT SABOR FROM TABELA_DE_PRODUTOS;