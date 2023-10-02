USE [VENDAS SUCOS]
GO

INSERT INTO [dbo].[PRODUTOS]
           ([ID_PRODUTOS]
           ,[DESCRITOR]
           ,[SABOR]
           ,[TAMANHO]
           ,[EMBALAGEM]
           ,[PRECO_LISTA])
     VALUES
           ('104113'
           ,'Light - 350 ml - Limão'
           ,'Limão'
           ,'350 ml'
           ,'Lata'
           ,3.25)
GO

SELECT * FROM VENDEDORES;
