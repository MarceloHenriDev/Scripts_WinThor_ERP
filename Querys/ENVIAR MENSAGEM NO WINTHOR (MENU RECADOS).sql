INSERT INTO PCRECFUNC 
            (
            CODFUNCAB
           , CODFUNCRE
           , DTAB
           , CODFUNCDEST
           , ASSUNTO
           , TEXTORECADO
           , NUMRECADO)
     VALUES (
            74
           , 74
           , SYSDATE
           , 74
           , 'FELICIDADES'
           , 'PARAB�NS FELIZ ANIVERS�RIO'
           , DFSEQ_PCRECFUNC.NEXTVAL);
           
            commit;
