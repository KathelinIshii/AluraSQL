INSERT INTO PRODUTOS
	(ID_PRODUTOS, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES (
	'1040107', 'Light - 350 ml - Melância', 'Melância', '350 ml', 'Lata', 4.56
);

SELECT * FROM PRODUTOS;

INSERT INTO PRODUTOS
VALUES 
	('1040111', 'Light - 350 ml - Manga', 'Manga', '350 ml', 'Lata', 3.20),
	('1040112', 'Light - 350 ml - Melão', 'Melão', '350 ml', 'Lata', 4.20);

INSERT INTO CLIENTES
VALUES
	('41471156710', 'Érica Carvalho', ' R. Iriquitia', 'Jardins', ' São Paulo', 'SP', '80012212', '1990-09-01', 27, 'F', 170000, 24500, 0),
	('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', ' Água Santa', 'Rio de Janeiro', 'RJ', '22000000', '2000-02-12', 18, 'M', 100000, 20000, 1),
	('26005867096', 'César Teixeira', 'Rua Conde de Bonfim', 'Tijuca', 'Rio de Janeiro', 'RJ', '22020001', '2000-03-12', 18, 'M', 120000,  22000, 0);

SELECT * FROM CLIENTES;