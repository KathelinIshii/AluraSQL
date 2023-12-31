DECLARE	
	@CPF VARCHAR(50),
	@NOME VARCHAR(100),
	@DATA_NASCIMENTO DATE,
	@IDADE INT;

SET @CPF = '19290992743';

--1471156710
--19290992743
--2600586709

SELECT 
	@NOME = NOME, 
	@DATA_NASCIMENTO = [DATA DE NASCIMENTO], 
	@IDADE = IDADE 
FROM [TABELA DE CLIENTES]
WHERE CPF = @CPF;

--SELECT 
--	NOME,
--	CHARINDEX(' ', NOME) AS ESPA�O_EM_BRANCO,
--	SUBSTRING(NOME, 1, CHARINDEX(' ', NOME) - 1) AS PRIMEIRO_NOME
--FROM [TABELA DE CLIENTES];

PRINT 'O PRIMEIRO NOME DO CLIENTE ' + @NOME + ' CUJO CPF � ' + @CPF + ', CORRESPONDE A: ' + SUBSTRING(@NOME, 1, CHARINDEX(' ', @NOME) - 1);

-----------------------

DECLARE @CPF VARCHAR(15);
DECLARE @DATA_NASCIMENTO DATE;
DECLARE @IDADE INT;

SET @CPF = '1471156710';

SELECT @DATA_NASCIMENTO = [DATA DE NASCIMENTO] 
FROM [TABELA DE CLIENTES] 
WHERE CPF = @CPF;

SET @IDADE = DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());

PRINT DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());