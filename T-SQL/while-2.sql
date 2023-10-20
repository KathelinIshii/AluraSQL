--Sabendo que a fun��o abaixo soma um dia a uma data:

--SELECT DATEADD(DAY, 1, @DATA)

--Como podemos fazer um script que, a partir do dia 01/01/2017,
--conte o n�mero de notas fiscais at� o dia 10/01/2017 e, al�m disso,
--imprima a data e o n�mero de notas fiscais?

SELECT * FROM [NOTAS FISCAIS];

SELECT
	DATA,
	NUMERO
FROM [NOTAS FISCAIS]

DECLARE 
	@DATA_INICIAL DATE,
	@DATA_FINAL DATE;

SET @DATA_INICIAL = '2017-01-01';
SET @DATA_FINAL = '2017-01-10'

PRINT 'ENTRANDO';
WHILE @DATA_INICIAL <= @DATA_FINAL
	BEGIN
		PRINT @DATA_INICIAL
		SELECT @DATA_INICIAL = DATEADD(DAY, 1, @DATA_INICIAL)
	END;
PRINT 'SAINDO';