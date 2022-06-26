#Quais os 5 campeões mais e menos banidos?

#Menos banidos
Select COUNT(quantidade_bans), campeao_banido
FROM(
SELECT primeiro_ban as quantidade_bans, primeiro_ban as campeao_banido FROM bans
union all
SELECT segundo_ban as quantidade_bans, primeiro_ban as campeao_banido FROM bans
union all
SELECT terceiro_ban as quantidade_bans, primeiro_ban as campeao_banido FROM bans
union all
SELECT primeiro_ban as quantidade_bans, primeiro_ban as campeao_banido FROM bans
union all
SELECT quinto_ban as quantidade_bans, primeiro_ban as campeao_banido FROM bans) as subquery
where campeao_banido <> 'null'
group by campeao_banido
order by COUNT(quantidade_bans)
limit 5;

#Mais banidos
Select COUNT(quantidade_bans), campeao_banido
FROM(
SELECT primeiro_ban as quantidade_bans, primeiro_ban as campeao_banido FROM bans
union all
SELECT segundo_ban as quantidade_bans, primeiro_ban as campeao_banido FROM bans
union all
SELECT terceiro_ban as quantidade_bans, primeiro_ban as campeao_banido FROM bans
union all
SELECT primeiro_ban as quantidade_bans, primeiro_ban as campeao_banido FROM bans
union all
SELECT quinto_ban as quantidade_bans, primeiro_ban as campeao_banido FROM bans) as subquery
group by campeao_banido
order by COUNT(quantidade_bans) desc
limit 5;