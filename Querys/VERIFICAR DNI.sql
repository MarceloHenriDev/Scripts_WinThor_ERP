SELECT
P.NUMASSOCDNI, P.*
FROM PCPREST P
WHERE 1=1 
AND P.DTPAG IS NULL
AND P.NUMASSOCDNI IS NOT NULL
