--DECLARE @MATRICULA VARCHAR(5);

--DECLARE  @NOME VARCHAR(100);

--DECLARE @PERCENTUAL FLOAT;

--DECLARE @DATA DATE;

--DECLARE @FERIAS BIT;

--DECLARE @BAIRRO VARCHAR(50);

DECLARE 
	@MATRICULA VARCHAR(5),
	@NOME VARCHAR(100),
	@PERCENTUAL FLOAT,
	@DATA DATE,
	@FERIAS BIT,
	@BAIRRO VARCHAR(50);

SET @MATRICULA = '00240';

SET @NOME = 'MARIA LUIZA';

SET @PERCENTUAL = 0.10;

SET @DATA = '2012-03-12';

SET @FERIAS = 1;

SET @BAIRRO = 'JARDINS';

PRINT @MATRICULA;

PRINT @NOME;

PRINT @PERCENTUAL;

PRINT @DATA;

PRINT @FERIAS;

PRINT @BAIRRO;

SET @MATRICULA = '00244';

SET @NOME = 'MARIA';

PRINT @MATRICULA;

PRINT @NOME;

PRINT @PERCENTUAL;

PRINT @DATA;

PRINT @FERIAS;

PRINT @BAIRRO;

---------------------

DECLARE
	@CLIENTE VARCHAR(10),
	@IDADE INT,
	@DATA_NASCUMENTO DATE,
	@CUSTO FLOAT;

SET @CLIENTE = 'JO�O';

SET @IDADE = 10;

SET @DATA_NASCUMENTO = '2007-01-10'

SET @CUSTO = 10.23;

PRINT @CLIENTE;

PRINT @IDADE;

PRINT @DATA_NASCUMENTO;

PRINT @CUSTO;