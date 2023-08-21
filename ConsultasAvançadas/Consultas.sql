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
/*Aqui eu estou colocando o nome da tabela na frente da coluna para poder especificar qual informação eu quero, já que estou usando duas colunas em diferentes tabelas que possuem o mesmo nome*/

SELECT * FROM TABELA_DE_PRODUTOS;

SELECT * FROM TABELA_DE_PRODUTOS WHERE 1 = 1;
/*Quando o valor for verdadeiro ele vai me trazer algum resultado*/

SELECT * FROM TABELA_DE_PRODUTOS WHERE 1 = 0;
/*Quando o valor for falso ele não me trara nenhum resultado*/

SELECT * FROM TABELA_DE_PRODUTOS WHERE CODIGO_DO_PRODUTO = '1004327';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja';

SELECT * FROM TABELA_DE_PRODUTOS WHERE EMBALAGEM = 'PET';

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE > 23;

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE < 23;

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE >= 23;

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE <= 23;

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE <> 23;

/*Quando for usar data no SQL eu devo serguir essa ordem YYYY-MM-DD ou seja ANO-MÊS-DIA*/
SELECT * FROM TABELA_DE_CLIENTES WHERE DATA_DE_NASCIMENTO >= '1995-11-14';

SELECT * FROM TABELA_DE_CLIENTES WHERE DATA_DE_NASCIMENTO < '1995-11-14';

SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO >= 'Lapa';
/*Quando estivermos lidando com algum valor que não seja numerico, como no exemplo acima, ele vai ordenar por ordem alfabetica*/

/*NOT inverte o resultado, onde está V vira F e onde está F vira V*/

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' AND TAMANHO = '470 ml';
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' OR TAMANHO = '470 ml';

SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'Manga' AND TAMANHO = '470 ml');
SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'Manga' OR TAMANHO = '470 ml');
/*Caso eu não tivesse colocado os () o NOT seria aplicado somente nessa expressão: SABOR = 'Manga' e não no conjunto todo*/

SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'Manga' AND TAMANHO = '470 ml');
SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT SABOR = 'Manga' AND TAMANHO = '470 ml';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' OR SABOR = 'Laranja' OR SABOR = 'Melancia';
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR IN ('Manga', 'Laranja','Melancia') AND TAMANHO = '1 Litro';
/*O IN serve para quando eu quero fazer varios OR e quero facilitar as coisas*/

SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro', 'Sao Paulo');
SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro', 'Sao Paulo') AND IDADE >= 20  ;
SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro', 'Sao Paulo') AND (IDADE >= 20  AND IDADE <= 25);
SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro', 'Sao Paulo') AND (IDADE BETWEEN 20 AND 25);
/*O BETWEEN é um facilitador quando eu quero algo entre alguma coisa, como nos dois exemplos acima, basicamente uma forma mais facil de fazer (IDADE >= 20  AND IDADE <= 25) */