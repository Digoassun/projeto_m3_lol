#Qual o campeão com mais vitorias em cada rota no CBLOL?

#top
select champ_top, count(champ_top) as quantidade_vitorias
from (select top_vermChamp as champ_top from matchinfo where resultado_vermelho = '1' and liga= 'CBLoL'
union all
select top_azulChamp as champ_top from matchinfo where resultado_azul = '1'  and liga= 'CBLoL'
) as subquery
group by champ_top
order by quantidade_vitorias desc
limit 5;

#jungle
select champ_jungle, count(champ_jungle) as quantidade_vitorias
from (select jungle_vermChamp as champ_jungle from matchinfo where resultado_vermelho = '1' and liga= 'CBLoL'
union all
select jungle_azulChamp as champ_jungle from matchinfo where resultado_azul = '1'  and liga= 'CBLoL'
) as subquery
group by champ_jungle
order by quantidade_vitorias desc
limit 5;

#mid
select champ_mid, count(champ_mid) as quantidade_vitorias
from (select mid_vermChamp as champ_mid from matchinfo where resultado_vermelho = '1' and liga= 'CBLoL'
union all
select mid_azulChamp as champ_mid from matchinfo where resultado_azul = '1'  and liga= 'CBLoL'
) as subquery
group by champ_mid
order by quantidade_vitorias desc
limit 5;

#adc
select champ_adc, count(champ_adc) as quantidade_vitorias
from (select adc_vermChamp as champ_adc from matchinfo where resultado_vermelho = '1' and liga= 'CBLoL'
union all
select adc_azulChamp as champ_adc from matchinfo where resultado_azul = '1'  and liga= 'CBLoL'
) as subquery
group by champ_adc
order by quantidade_vitorias desc
limit 5;

#suporte
select champ_suporte, count(champ_suporte) as quantidade_vitorias
from (select suporte_vermChamp as champ_suporte from matchinfo where resultado_vermelho = '1' and liga= 'CBLoL'
union all
select suporte_azulChamp as champ_suporte from matchinfo where resultado_azul = '1'  and liga= 'CBLoL'
) as subquery
group by champ_suporte
order by quantidade_vitorias desc
limit 5;

