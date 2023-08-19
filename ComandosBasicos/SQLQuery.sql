/*Eu só vou precisar usar o [] quando eu for usar espaço ou algum ~ por exemplo*/
/*Vou usar o CHAR quando eu tiver uma qunatidade fixa, quando eu sei exatamente o quanto vai ali, tipo CPF, 
mas quando eu não sei quantos campos vou usar ou quando estou na duvida eu vou sempre de VARCHAR*/

CREATE TABLE [TABELA DE CLIENTES] (

CPF CHAR (11),
NOME VARCHAR (200),
RUA VARCHAR (200),
COMPLEMENTO VARCHAR (200),
BAIRRO VARCHAR (200),
ESTADO CHAR (2),
CEP CHAR (8),
[DATA DE NASCIMENTO] DATE,
IDADE SMALLINT,
SEXO CHAR (1), 
[LIMITE DE CREDITO] MONEY,
/*Para quando vou usar um valor que está relacionado a dinheiro*/
[VOLUME MINIMO] FLOAT,
/*Permite o registro de casas decimais*/
[PRIMEIRA COMPRA] BIT
/*É para quando eu vou usar 0 e 1*/
);

CREATE TABLE [TABELA DE PRODUTOS] (
[ID PRODUTO] VARCHAR (20) PRIMARY KEY,
NOME VARCHAR (100),
EMBALAGEM VARCHAR (100),
TAMANHO VARCHAR (100),
SABOR VARCHAR (100), 
[PREÇO DE LISTA] SMALLMONEY
);

ALTER TABLE [TABELA DE CLIENTES] ALTER COLUMN CPF CHAR (11) NOT NULL;

ALTER TABLE [TABELA DE CLIENTES] ADD CONSTRAINT PK_TABELA_CLIENTE
/*ADD CONSTRAINT - É para adicionar uma restrição, vou ter que dar um nome para essa restrição
depois eu vou precisar falar qual retrição eu vou querer add, nesse caso seria a PRIMARY KEY
e tbm estamos falando aqui que o CPF, vai ser nossa PRIMARY KEY
Eu vou precisar do () para definir qual vai ser o nome do campo*/
PRIMARY KEY CLUSTERED (CPF);


CREATE TABLE [TABELA DE VENDEDORES] (

[ID VENDEDORES] CHAR (5) PRIMARY KEY,
NOME VARCHAR (100),
[PERCENTUAL COMISSÃO] FLOAT
/*Eu uso quando eu vou usar um número que não é inteiro*/
);

