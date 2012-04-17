CREATE OR ALTER TRIGGER INSERE_USER FOR FUNCIONARIO
 ACTIVE 
 BEFORE INSERT 
 POSITION 0
AS 
BEGIN 
    /* enter trigger code here */ 
    IF (NEW.RECEBE_COMISSAO = 'S') THEN
    BEGIN     
      INSERT INTO USUARIO(CODUSUARIO, NOMEUSUARIO, STATUS, PERFIL) VALUES (GEN_ID(GEN_USER, 1), NEW.NOME_FUNCIONARIO, 1, 'VEND');
      NEW.CODUSUARIO = GEN_ID(GEN_USER, 0);   
      WHEN SQLCODE -803 DO
        EXCEPTION E_ERROCHAVEPRIMARIA;
    END
END