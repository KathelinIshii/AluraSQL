--Quantas notas fiscais temos no dia 01/01/2017

DECLARE
	@NUMNOTAS INT,
	@DATA DATE;

SET @DATA = '2017-01-01'

SELECT @NUMNOTAS = COUNT(*)
FROM [NOTAS FISCAIS]
WHERE DATA = @DATA;

PRINT @NUMNOTAS;