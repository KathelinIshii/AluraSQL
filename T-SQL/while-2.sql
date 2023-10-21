SELECT * FROM [NOTAS FISCAIS];

SELECT
	DATA,
	NUMERO
FROM [NOTAS FISCAIS]

DECLARE 
	@DATA_INICIAL DATE,
	@DATA_FINAL DATE,
	@NUMERO FLOAT;

SET @DATA_INICIAL = '2017-01-01';
SET @DATA_FINAL = '2017-01-10';

SELECT
	@NUMERO = COUNT(NUMERO)
FROM [NOTAS FISCAIS]

PRINT 'ENTRANDO';
WHILE @DATA_INICIAL <= @DATA_FINAL 
	BEGIN
		PRINT @DATA_INICIAL
		SELECT @NUMERO = COUNT(NUMERO) FROM [NOTAS FISCAIS] WHERE DATA = @DATA_INICIAL
		PRINT @NUMERO
		SELECT @DATA_INICIAL = DATEADD(DAY, 1, @DATA_INICIAL)
	END;
PRINT 'SAINDO';

-------------------------

DECLARE @DATAINICIAL DATE
DECLARE @DATAFINAL DATE
DECLARE @NUMNOTAS INT

SET @DATAINICIAL = '20170101'

SET @DATAFINAL = '20170110'

WHILE @DATAINICIAL <= @DATAFINAL
BEGIN
    SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] 
        WHERE DATA = @DATAINICIAL
    PRINT CONVERT(VARCHAR(10), @DATAINICIAL) + ' --> ' 
        + CONVERT(VARCHAR(10), @NUMNOTAS)
    SELECT @DATAINICIAL = DATEADD(DAY, 1, @DATAINICIAL)
END