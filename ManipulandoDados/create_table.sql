CREATE TABLE PRODUTOS (
ID_PRODUTOS VARCHAR(10) NOT NULL,
DESCRITOR VARCHAR(100) NULL,
SABOR VARCHAR(50) NULL,
TAMANHO VARCHAR(50) NULL,
EMBALAGEM VARCHAR(50) NULL,
PRECO_LISTA DECIMAL(30,2) NULL,
PRIMARY KEY(ID_PRODUTOS)
);

GO

CREATE TABLE VENDEDORES (
ID_VENDEDORES VARCHAR(5) NOT NULL,
NOME VARCHAR(100) NULL,
BAIRRO VARCHAR(50) NULL,
COMISSAO FLOAT NULL,
DATA_ASMISSAO DATE NULL,
FERIAS BIT NULL,
PRIMARY KEY(ID_VENDEDORES)
);

GO

CREATE TABLE CLIENTES (
CPF VARCHAR(11) NOT NULL,
NOME VARCHAR(100) NULL,
ENDERECO VARCHAR(150) NULL,
BAIRRO VARCHAR(50) NULL,
CIDADE VARCHAR(50) NULL,
ESTADO VARCHAR(50) NULL,
CEP VARCHAR(8) NULL,
DATA_NASCIMENTO DATE NULL,
IDADE INT NULL,
GENERO VARCHAR(1) NULL,
LIMITE_CREDITO FLOAT NULL,
VOLUME_COMPRA FLOAT NULL,
PRIMEIRA_COMPRA BIT,
PRIMARY KEY(CPF)
);

GO