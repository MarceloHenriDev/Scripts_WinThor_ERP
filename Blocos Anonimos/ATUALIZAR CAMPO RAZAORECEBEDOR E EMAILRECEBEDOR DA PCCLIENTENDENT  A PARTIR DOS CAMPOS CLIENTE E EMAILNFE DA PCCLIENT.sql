DECLARE 
    CURSOR DADOS IS
        SELECT
        E.RAZAORECEBEDOR, E.EMAILRECEBEDOR, P.CLIENTE, P.EMAILNFE, E.CODCLI, E.CODENDENTCLI
        FROM PCCLIENTENDENT E, PCCLIENT P
        WHERE E.CODCLI = P.CODCLI 
        AND E.RAZAORECEBEDOR IS NULL;
BEGIN
FOR RW IN DADOS
LOOP
    UPDATE PCCLIENTENDENT F SET F.RAZAORECEBEDOR = RW.CLIENTE, F.EMAILRECEBEDOR = RW.EMAILNFE
    WHERE F.CODCLI = RW.CODCLI;    
END LOOP;
END;
