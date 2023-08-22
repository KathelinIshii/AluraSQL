/*Não repete as linhas, mostra as linhas distintas/diferentes*/

SELECT * FROM TABELA_DE_CLIENTES;

SELECT DISTINCT BAIRRO, CIDADE FROM TABELA_DE_CLIENTES;
/*Quando eu uso o DISTINCT desse jeito, ele vai pegar os arquivos distintos nas duas colunas que estão acima, ou seja, o que é diferente tanto no bairro quando na cidade*/

SELECT DISTINCT CIDADE, BAIRRO FROM TABELA_DE_CLIENTES;

SELECT * FROM TABELA_DE_PRODUTOS;

SELECT EMBALAGEM FROM TABELA_DE_PRODUTOS;

SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS;

SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS WHERE SABOR = ('Maca') ;

SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE 'Maca' ;
--Quando eu não coloco % no LIKE, ele funciona como um = só que para texto

SELECT DISTINCT EMBALAGEM, SABOR FROM TABELA_DE_PRODUTOS;
--Assim eu vou ver as combinações diferentes para ambos os campos

SELECT DISTINCT SABOR FROM TABELA_DE_PRODUTOS;