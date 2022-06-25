#CBLOL: qual a equipe com maior numero de Kills?
SELECT 
    matchinfo.liga,
    SUBSTRING(kills.assassino FROM 1 FOR 4) AS equipe,
    COUNT(*) AS numero_de_kills
FROM
    kills
        JOIN
    matchinfo ON kills.assassino LIKE CONCAT(matchinfo.time_azul, '%')
        OR kills.assassino LIKE CONCAT(matchinfo.time_vermelho, '%')
WHERE
    matchinfo.liga = 'CBLol'
GROUP BY CONCAT(SUBSTRING(kills.assassino FROM 1 FOR 4),
        '%')
ORDER BY numero_de_kills DESC;