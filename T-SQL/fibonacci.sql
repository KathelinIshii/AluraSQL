DECLARE @NUMERO_ANTERIOR2 INT;
DECLARE @NUMERO_ANTERIOR1 INT;
DECLARE @NUMERO_ATUAL INT;
DECLARE @SEQUENCIA INT;
DECLARE @LIMITE_MAXIMO INT;
DECLARE @CONTADOR_SEQUENCIA INT;

SET @LIMITE_MAXIMO = 2000;
SET @SEQUENCIA = 18;
SET @CONTADOR_SEQUENCIA = 3;

SET @NUMERO_ANTERIOR2 = 0;
SET @NUMERO_ANTERIOR1 = 1;

PRINT 'POSI��O 1 --> 0';

PRINT 'POSI��O 2 --> 1';

WHILE @CONTADOR_SEQUENCIA <= @SEQUENCIA
BEGIN
   SET @NUMERO_ATUAL = @NUMERO_ANTERIOR2 + @NUMERO_ANTERIOR1;
   PRINT 'POSI��O ' + TRIM(STR(@CONTADOR_SEQUENCIA,10,0)) + ' --> ' + TRIM(STR(@NUMERO_ATUAL, 10,0));
   IF @NUMERO_ATUAL > @LIMITE_MAXIMO BREAK; 
   SET  @NUMERO_ANTERIOR2 = @NUMERO_ANTERIOR1;
   SET @NUMERO_ANTERIOR1 = @NUMERO_ATUAL;
   SET @CONTADOR_SEQUENCIA = @CONTADOR_SEQUENCIA + 1;
END;