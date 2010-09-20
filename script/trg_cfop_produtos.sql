CREATE OR ALTER TRIGGER CFOP_PRODUTOS FOR NOTAFISCAL ACTIVE
AFTER INSERT OR UPDATE POSITION 0
AS 
declare variable codm INTEGER;
BEGIN
    if (new.NATUREZA = 15) then
    begin
        select v.CODMOVIMENTO from venda v
        where v.CODVENDA = new.CODVENDA
        into :codm;
    end
    else
    begin
        select c.CODMOVIMENTO from COMPRA c
        where c.CODCOMPRA = new.CODVENDA
        into :codm;
    end
        
	if (inserting) then
	 update MOVIMENTODETALHE set CFOP = new.CFOP where CODMOVIMENTO = :codm;
	else
     if(old.CFOP <> new.CFOP) then
        update MOVIMENTODETALHE set CFOP = udf_left(new.CFOP, 4)
        where CODMOVIMENTO = :codm;
END