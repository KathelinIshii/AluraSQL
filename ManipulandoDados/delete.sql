 INSERT INTO PRODUTOS (ID_PRODUTOS,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001001','Sabor dos Alpes 700 ml - Manga','Manga','700 ml','Garrafa',7.50),
	 ('1001000','Sabor dos Alpes 700 ml - Melão','Melão','700 ml','Garrafa',7.50),
	 ('1001002','Sabor dos Alpes 700 ml - Graviola','Graviola','700 ml','Garrafa',7.50),
	 ('1001003','Sabor dos Alpes 700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50),
	 ('1001004','Sabor dos Alpes 700 ml - Abacate','Abacate','700 ml','Garrafa',7.50),
	 ('1001005','Sabor dos Alpes 700 ml - Açai','Açai','700 ml','Garrafa',7.50),
	 ('1001006','Sabor dos Alpes 1 Litro - Manga','Manga','1 Litro','Garrafa',7.50),
	 ('1001007','Sabor dos Alpes 1 Litro - Melão','Melão','1 Litro','Garrafa',7.50),
	 ('1001008','Sabor dos Alpes 1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50),
	 ('1001009','Sabor dos Alpes 1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50),
	 ('1001010','Sabor dos Alpes 1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50),
	 ('1001011','Sabor dos Alpes 1 Litro - Açai','Açai','1 Litro','Garrafa',7.50)

SELECT * from [PRODUTOS] 
WHERE SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes' AND TAMANHO = '1 Litro'

DELETE FROM PRODUTOS
WHERE ID_PRODUTOS = '1001000';

DELETE FROM PRODUTOS
WHERE SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes' AND TAMANHO = '1 Litro';

SELECT COUNT(*)
FROM SUCOS_FRUTAS.dbo.TABELA_DE_PRODUTOS;

SELECT COUNT(*)
FROM PRODUTOS;

SELECT * FROM PRODUTOS
WHERE ID_PRODUTOS NOT IN (
	SELECT CODIGO_DO_PRODUTO
	FROM SUCOS_FRUTAS.dbo.TABELA_DE_PRODUTOS);

DELETE FROM PRODUTOS
WHERE ID_PRODUTOS NOT IN (
	SELECT CODIGO_DO_PRODUTO
	FROM SUCOS_FRUTAS.dbo.TABELA_DE_PRODUTOS);

SELECT
	A.ID_VENDEDORES,
	B.IDADE
FROM TABELA_VENDAS A
INNER JOIN CLIENTES B
ON A.CPF = B.CPF
WHERE B.IDADE <= 18;

DELETE A
FROM TABELA_VENDAS A
INNER JOIN CLIENTES B
ON A.CPF = B.CPF
WHERE B.IDADE <= 18;

---------------

USE [VENDAS SUCOS]
GO

/****** Object:  Table [dbo].[PRODUTOS]    Script Date: 03/10/2023 17:17:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

	CREATE TABLE [dbo].[PRODUTOS_2](
		[ID_PRODUTOS] [varchar](10) NOT NULL,
		[DESCRITOR] [varchar](100) NULL,
		[SABOR] [varchar](50) NULL,
		[TAMANHO] [varchar](50) NULL,
		[EMBALAGEM] [varchar](50) NULL,
		[PRECO_LISTA] [decimal](30, 2) NULL,
	PRIMARY KEY CLUSTERED 
	(
		[ID_PRODUTOS] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO

INSERT INTO PRODUTOS_2
SELECT * FROM PRODUTOS;