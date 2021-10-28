SELECT
*
FROM PCPEDC P
WHERE NVL(P.NUMVIASMAPASEP, 0) = 0
AND P.POSICAO = 'L'
AND P.CONDVENDA IN (1, 8)
AND (((NVL(P.VENDAASSISTIDA, 'N') = 'S') AND (P.CONDVENDA = 8) AND 
            ((SELECT PC.POSICAO 
                  FROM PCPEDC PC 
                 WHERE PC.CONDVENDA = 7 
                   AND NVL(PC.VENDAASSISTIDA, 'N') = 'S' 
                   AND PC.NUMPED = P.NUMPEDENTFUT) = 'F')) OR 
            (NVL(P.VENDAASSISTIDA, 'N') = 'N'))
