INSERT INTO [TABELA DE PRODUTOS] VALUES (
'1040107',
'Light',
'Lata',
'350ml',
'melancia',
4.56
);

INSERT INTO [TABELA DE PRODUTOS] VALUES 
('1037797', 'CLEAN', 'PET', '2 LITROS', 'LARANJA', 16.01),
('1000889', 'SABOR DA MONTANHA', ' GARRAFA', '700ML', 'UVA', 6.31),
('1004327', 'VIDEIRA DO CAMPO', 'PET', '1,5 LITROS', 'MELANCIA', 19.51),
('1088126', 'LINHA CITROS', 'PET', '1 LITRO', 'LIM�O', 7.00);

SELECT * FROM [TABELA DE PRODUTOS];

UPDATE [TABELA DE PRODUTOS] SET NOME = 'LIGHT', EMBALAGEM = 'LATA' WHERE [ID PRODUTO] = 1040107;

UPDATE [TABELA DE PRODUTOS] SET TAMANHO = UPPER(TAMANHO) , SABOR = LOWER(SABOR) ;
/*O UPPER serve para quando eu quero deixar tudo com letra maiuscula e o 
LOWER pra quando eu quero deixar tudo minusculo 
lembrando que se eu n�o usar o WHERE, como nesse caso, eu vou modificar a coluna toda*/

UPDATE [TABELA DE PRODUTOS] SET NOME = UPPER(NOME), EMBALAGEM = UPPER(EMBALAGEM), TAMANHO = UPPER(TAMANHO), SABOR = UPPER(SABOR) ;

INSERT INTO [TABELA DE CLIENTES] VALUES

('00384393431', 'Jo�o da Silva', 'Rua Projetada A', 'N�mero 233', 'Copacabana', 'RJ',
'20000000','1965-03-21', 57, 'M', 200000, 3000.30, 1),
('00384393555', 'Maria Clara', 'Rua Projetada K', 'N�mero 123', 'Copacabana', 'RJ',
'20000000', '1975-03-21',47, 'F', 200000, 3000.30, 0);

SELECT * FROM [TABELA DE CLIENTES];

INSERT INTO [TABELA DE VENDEDORES] VALUES
('00236', 'Cl�udia Morais', 8),
('00237', 'Marcela Ferreira', 9),
('00238', 'M�rcio Almeida', 8);

SELECT * FROM [TABELA DE VENDEDORES];

INSERT INTO [TABELA DE PRODUTOS]
([ID PRODUTO], NOME, EMBALAGEM, TAMANHO, [PRE�O DE LISTA], SABOR)
/*Para quando eu vou inserir algo que n�o est� de acordo com a ordem da tabela ou quando eu tenho um valor nulo*/
VALUES
('5449310', 'Frescor do Ver�o - 350 ml - Lim�o', 'Lata', '350 ml',2.45, 'Lim�o'),
('1078680', 'Frescor do Ver�o - 350 ml - Manga', 'Lata', '350 ml',3.18, 'Manga');

INSERT INTO [TABELA DE CLIENTES]
(CPF, NOME, RUA, BAIRRO, ESTADO, CEP, [DATA DE NASCIMENTO], IDADE, SEXO, [LIMITE DE CREDITO], [VOLUME MINIMO], [PRIMEIRA COMPRA])
VALUES
('1411567150', 'Erica Carvalho','R. Iriquitia', 'Jardins','SP', '80012212', '1990-09-01',	'32', 'F', 1700000.000,	24500, 0),
('1990992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', 'Agua Santa',  'RJ', '22000000', '2000-02-12', '23', 'M', 1000000.000, 20000, 1);