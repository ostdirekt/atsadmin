CREATE OR ALTER TRIGGER ALTERA_CODPRO FOR PRODUTOS ACTIVE
BEFORE INSERT OR UPDATE POSITION 0
AS
declare variable CODPRO varchar(15); 
BEGIN
	if (old.CODPRO <> new.CODPRO) Then
		if (EXISTS(select SOLIC_PRODUTO from COMPRA_SOLIC where SOLIC_PRODUTO = old.CODPRO) ) then
			EXCEPTION ALTERA_CODPRO;
END