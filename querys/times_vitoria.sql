#GERAL: qual times com a maior quantidade de vitória?


Select count(resultado) as quantidade_vitorias, time
FROM(
select time_azul as time, resultado_azul as resultado from matchinfo where resultado_azul = '1'
union all
select time_vermelho as time, resultado_vermelho as resultado from matchinfo where resultado_vermelho = '1'
) as subquery
group by time
order by count(resultado) desc
limit 5;

Select count(resultado) as quantidade_derrota, time
FROM(
select time_azul as time, resultado_azul as resultado from matchinfo where resultado_azul = '0'
union all
select time_vermelho as time, resultado_vermelho as resultado from matchinfo where resultado_vermelho = '0'
) as subquery
group by time
order by count(resultado) desc
limit 5;