#CBLOL: qual jogador mais teve abates no cblol?

SELECT matchinfo.liga, count(id_kill) as quantidade_kills, assassino
FROM kills
INNER JOIN
matchinfo on matchinfo.address = kills.address_kills
where liga= 'CBLoL' and not 'null'
group by assassino
order by quantidade_kills desc
limit 1;