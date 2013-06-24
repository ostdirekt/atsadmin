CREATE TABLE NOTAFISCAL_PROD_IMPORTA
(
    NOTAFISCAL INTEGER NOT NULL,
    SERIE  CHAR(5) not null ,
    CNPJ_EMITENTE VARCHAR(25) not null ,
    NUM_ITEM INTEGER NOT NULL,
    CODPRODUTO INTEGER,
    CODPRODUTO_ATS INTEGER,
    CODPRO_ATS VARCHAR(15),
    PRODUTO VARCHAR(150),
    PRODUTO_ATS VARCHAR(150),
    NCM CHAR(8),
    CFOP CHAR(4),
    UN CHAR(5),
    QTDE DOUBLE PRECISION,
    VLR_UNIT DOUBLE PRECISION,
    VLR_TOTAL DOUBLE PRECISION,
    ICMS VARCHAR(50),
    PIS VARCHAR(50),
    COFINS VARCHAR(50),
    IPI VARCHAR(50),
    PRIMARY KEY (NOTAFISCAL, SERIE, CNPJ_EMITENTE, NUM_ITEM)
);
