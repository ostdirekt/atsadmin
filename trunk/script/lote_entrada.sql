CREATE OR ALTER TRIGGER LOTE_ENTRADA FOR MOVIMENTODETALHE ACTIVE
AFTER UPDATE POSITION 1
as
  DECLARE VARIABLE QTDEESTOQ DOUBLE PRECISION; 
  DECLARE VARIABLE ESTOQATUAL DOUBLE PRECISION; 
  DECLARE VARIABLE TEMLOTE VARCHAR(60); 
  DECLARE VARIABLE TQTDEESTOQ DOUBLE PRECISION;  
  DECLARE VARIABLE TIPO VARCHAR(20); 
  DECLARE VARIABLE PRECO DOUBLE PRECISION; 

begin
 /* 0 = ENTRADA */
 /* Adiciono a Quantidade Comprada ou Entrada na Tab Lote */
 SELECT DADOS FROM PARAMETRO WHERE PARAMETRO = 'EMPRESA'
 INTO :TIPO;
 /* Nao usada no CITRUS */
 IF (TIPO <> 'CITRUS') THEN
 begin 
   if (NEW.BAIXA = '0') then
   IF (OLD.LOTE <> '') THEN
   BEGIN
     PRECO = NEW.PRECO; 
     /* Procuro na tabela LOTES se ja existe */
     SELECT FIRST 1 ESTOQUE, LOTE FROM LOTES WHERE LOTE = OLD.LOTE 
       AND CODPRODUTO = OLD.CODPRODUTO
     INTO :ESTOQATUAL, :TEMLOTE;

       IF (TEMLOTE IS NULL) THEN
       BEGIN
         IF (ESTOQATUAL IS NULL) THEN 
            ESTOQATUAL = 0;
         INSERT INTO LOTES(LOTE, CODPRODUTO, DATAFABRICACAO, DATAVENCIMENTO, ESTOQUE, PRECO) 
           VALUES(OLD.LOTE, old.CODPRODUTO, OLD.DTAFAB, OLD.DTAVCTO, OLD.QUANTIDADE, :PRECO);
       end 
       ELSE 
       BEGIN
         IF (ESTOQATUAL IS NULL) THEN 
            ESTOQATUAL = 0;
         QTDEESTOQ = ESTOQATUAL + OLD.QUANTIDADE;
         UPDATE LOTES SET ESTOQUE = :QTDEESTOQ, PRECO = :PRECO WHERE LOTE = OLD.LOTE
           AND CODPRODUTO = OLD.CODPRODUTO;
       END
   end
 end
 begin
 /* 1 = SAIDA */
 /* Acrescento a quantidade q foi retirada do estoque */
 if ((OLD.BAIXA = '1') and (new.BAIXA is null) and (OLD.LOTE <> ''))then
   BEGIN
     /* Procuro na tabela LOTES se j� existe */
     SELECT ESTOQUE FROM LOTES WHERE LOTE = OLD.LOTE AND CODPRODUTO = OLD.CODPRODUTO
     INTO :ESTOQATUAL;
     BEGIN
       IF (ESTOQATUAL IS NULL) THEN  
         ESTOQATUAL = 0;
       QTDEESTOQ = ESTOQATUAL + OLD.QUANTIDADE;
       UPDATE LOTES SET ESTOQUE = :QTDEESTOQ WHERE LOTE = OLD.LOTE  AND CODPRODUTO = OLD.CODPRODUTO;
     END
   end
 /* 0 = ENTRADA */
 /* Retiro do estoque o movimento deletado */
 if ((OLD.BAIXA = '0') and (new.BAIXA is null) and (OLD.LOTE <> '')) then
   BEGIN
     /* Procuro na tabela LOTES se j� existe */
     SELECT ESTOQUE FROM LOTES WHERE LOTE = OLD.LOTE  AND CODPRODUTO = OLD.CODPRODUTO
     INTO :ESTOQATUAL;
     BEGIN
       IF (ESTOQATUAL IS NULL) THEN  
         ESTOQATUAL = 0;
       IF (OLD.QUANTIDADE < ESTOQATUAL) THEN
         TQTDEESTOQ = ESTOQATUAL - OLD.QUANTIDADE;
       IF (QTDEESTOQ <= OLD.QUANTIDADE) THEN
         TQTDEESTOQ = OLD.QUANTIDADE - ESTOQATUAL;
       UPDATE LOTES SET ESTOQUE = :TQTDEESTOQ WHERE LOTE = OLD.LOTE  AND CODPRODUTO = OLD.CODPRODUTO;
     END
   end
 end
end