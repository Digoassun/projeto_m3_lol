#CBLOL: qual a equipe com maior numero de Kills?
SELECT 
    count(id_kill) as numero_de_kills_CBLol,
    sum(kills.assassino LIKE CONCAT(matchinfo.time_azul, '%')) as time_azul,
    sum(kills.assassino LIKE CONCAT(matchinfo.time_vermelho, '%')) as time_vermelho
FROM
    kills
        JOIN
    matchinfo ON kills.assassino LIKE CONCAT(matchinfo.time_azul, '%')
        OR kills.assassino LIKE CONCAT(matchinfo.time_vermelho, '%')
WHERE
    matchinfo.liga = 'CBLol'