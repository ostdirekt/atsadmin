CREATE OR ALTER PROCEDURE CALCULA_ICMS (
    NUMERO_NF integer,
    UF char(2),
    CFOP varchar(10),
    FRETE double precision,
    SEGURO double precision,
    OUTROS double precision,
    TOTAL_PROD double precision,
    INDICE_MANUAL char(1),
    ICMS_INFO double precision,
    REDUZ_INFO double precision )
AS
declare variable cod integer;
declare variable codv integer;
declare variable NotaFiscalVenda integer;
declare variable serie varchar(20);
declare variable prazo varchar(20); 
declare variable NUMEROFATURA VARCHAR(20);
declare variable PARAMETRO VARCHAR(20);
declare variable qtde DOUBLE PRECISION;
declare variable preco DOUBLE PRECISION;
declare variable TOTICMS DOUBLE PRECISION;
declare variable TOTBASEICMS DOUBLE PRECISION;
declare variable TOTST DOUBLE PRECISION;
declare variable TOTIPI DOUBLE PRECISION;
declare variable TOTPROD DOUBLE PRECISION;
declare variable TOTBASEST DOUBLE PRECISION;
declare variable SEG DOUBLE PRECISION;
declare variable VFRETE DOUBLE PRECISION;
declare variable VOUTROS DOUBLE PRECISION;
declare variable bcfrete DOUBLE PRECISION;
declare variable stfrete DOUBLE PRECISION;
declare variable DESCONTO DOUBLE PRECISION;
declare variable codCli integer;
declare variable d9 SMALLINT;
declare variable nat SMALLINT;
begin

    select v.codmovimento, v.NOTAFISCAL, v.SERIE, v.CODVENDA, v.prazo, n.NATUREZA, n.VALOR_FRETE, n.OUTRAS_DESP, n.VALOR_SEGURO, n.VALOR_DESCONTO from venda v
        inner join notafiscal n on n.CODVENDA = v.CODVENDA where n.NUMNF = :numero_nf and (n.NATUREZA = 12 or n.NATUREZA = 15 or n.NATUREZA = 16)
    into :cod, :notaFiscalVenda, :serie, :codv, :prazo, :nat, :VFRETE, :SEG, :VOUTROS, :DESCONTO; 
    	
    if (nat is null) then
    select c.codmovimento, c.NOTAFISCAL, c.SERIE, c.CODCOMPRA, c.prazo, n.NATUREZA, n.VALOR_DESCONTO from COMPRA c
        inner join notafiscal n on n.CODVENDA = c.CODCOMPRA where n.NUMNF = :numero_nf and (n.NATUREZA = 20 or n.NATUREZA = 21)
    into :cod, :notaFiscalVenda, :serie, :codv, :prazo, :nat, :DESCONTO;              

    select COALESCE(sum(md.ICMS_SUBST), 0), COALESCE(sum(md.ICMS_SUBSTD), 0), COALESCE(sum(md.VALOR_ICMS), 0), COALESCE(sum(md.VLR_BASEICMS), 0), COALESCE(sum(md.VIPI), 0), COALESCE(sum(md.QUANTIDADE * md.VLR_BASE), 0) from MOVIMENTODETALHE md
    where md.CODMOVIMENTO = :cod
    into :TOTST, :TOTBASEST, :TOTICMS, :TOTBASEICMS, :TOTIPI, :TOTPROD;
    
    select first 1 COALESCE(md.BCFRETE, 0), COALESCE(md.STFRETE, 0) from MOVIMENTODETALHE md
    where md.CODMOVIMENTO = :cod
    into :bcfrete, :stfrete;
    
    UPDATE NOTAFISCAL SET BASE_ICMS_SUBST = :TOTBASEST + :BCFRETE, VALOR_ICMS_SUBST = :TOTST + :STFRETE, VALOR_IPI = :TOTIPI, VALOR_ICMS = :TOTICMS, BASE_ICMS = :TOTBASEICMS ,
      VALOR_TOTAL_NOTA = :TOTPROD + :TOTST + :TOTIPI + :VFRETE + :SEG + :VOUTROS + :STFRETE - :DESCONTO
      where NUMNF = :numero_nf;
              
  
    select first 1 NUMEROFATURA from NFE_FATURA(:CODV)
      into :numerofatura;        
      NumeroFatura = notaFiscalVenda || '-' || serie;
        
    -- vejo se usa nf Parcial
    select parametro from parametro where parametro = 'NFVALOR'
    into :parametro;
    if (parametro is not null) then
    begin        
      select first 1 cast(p.d9 as integer) from PARAMETRO p  where p.PARAMETRO = :Prazo
        into :d9; 

      if (d9 is null) then 
        d9 = 999;
    
      if (d9 <> 999) then 
        EXECUTE PROCEDURE Corrige_fatura(:NumeroFatura);  
    end
    if ((:nat = 15) or (:nat = 12)) then
      update recebimento set valst = :TOTST where titulo = :notafiscalVenda || '-' || :serie and via = 1;
       
end