SELECT * FROM PRODUTOS;

UPDATE PRODUTOS 
SET PRECO_LISTA = 5
WHERE ID_PRODUTOS = '1040107';

SELECT * 
FROM PRODUTOS
WHERE SABOR = 'Manga';

UPDATE PRODUTOS
SET PRECO_LISTA = PRECO_LISTA * 1.10
WHERE SABOR = 'Manga';

SELECT DESCRITOR
FROM PRODUTOS
WHERE TAMANHO = '350 ml'