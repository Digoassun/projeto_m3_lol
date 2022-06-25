#CBLOL: qual a equipe com maior numero de Kills?
SELECT 
    matchinfo.liga,
    SUBSTRING(kills.assassino FROM 1 FOR 3) AS equipe,
    count(id_kill) as contagem_mortes 
FROM
 kills 
        JOIN
    matchinfo ON kills.address_kills = matchinfo.address
WHERE
    matchinfo.liga = 'CBLol'
GROUP BY equipe

order by contagem_mortes desc
limit 1;