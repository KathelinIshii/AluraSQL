--Diante dessa informação, como poderemos modificar o SCRIPT acima para apenas
--fazer a alteração da IDADE se a mesma, que está na tabela, seja diferente da calculada?

DECLARE @CPF VARCHAR(15);
DECLARE @DATA_NASCIMENTO DATE;
DECLARE @IDADE INT;

SET @CPF = '1471156710';

SELECT @DATA_NASCIMENTO = [DATA DE NASCIMENTO] 
FROM [TABELA DE CLIENTES] 
WHERE CPF = @CPF;
 
SET @IDADE = DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());

PRINT @IDADE;

UPDATE [TABELA DE CLIENTES] 
SET IDADE = @IDADE 
WHERE CPF = @CPF;

PRINT @IDADE