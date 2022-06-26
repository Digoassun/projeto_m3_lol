# qual a liga de LOL que teve maior número de kills?
SELECT 
    matchinfo.liga,
    count(id_kill) as contagem_mortes 
FROM
 kills 
        JOIN
    matchinfo ON kills.address_kills = matchinfo.address
WHERE
    matchinfo.liga like'%'
GROUP BY liga
order by contagem_mortes desc
limit 5;