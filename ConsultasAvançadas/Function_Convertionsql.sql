SELECT CONVERT(VARCHAR(10), GETDATE(), 121);

SELECT CONVERT(VARCHAR(30), GETDATE(), 121);
--Data para texto

SELECT DATA_DE_NASCIMENTO, CONVERT(VARCHAR(30), DATA_DE_NASCIMENTO, 101) 
FROM TABELA_DE_CLIENTES;