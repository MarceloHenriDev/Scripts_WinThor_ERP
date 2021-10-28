create or replace TRIGGER TAZ_TRG_TIPODOCUMENTO
 BEFORE 
 INSERT OR UPDATE 
 ON PCCLIENT
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW 
BEGIN
/* TRIGGER AJUSTAR CADASTRO DO CLIENTE NA 302
   TAIRONE MORAIS - ANALISTA DE SISTEMAS - A�O POTIGUAR - 25/05/2021 */
    /* VERIFICA SE O CLIENTE CGCENT FOR MAIOR 14 ONDE SIGINIFICA ELE � PJ
       O CAMPO TIPODOCUMENTO SEJA = N  aonde N significa Nota Fiscal aonde
        a rotina do checkout valor isso e n�o emite nfe para PJ 
        regra de negocio aqui da empresa*/
    IF( LENGTH(REGEXP_replace(:NEW.CGCENT, '\D')) >= 14 ) THEN
            :NEW.TIPODOCUMENTO := 'N';
    END IF;
END;
