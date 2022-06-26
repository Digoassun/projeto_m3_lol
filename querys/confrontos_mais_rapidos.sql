#GERAL: quais os confrontos(partidas) mais rápidos de equipes?
SELECT 
    time_azul, time_vermelho, ano, duracao
FROM
    matchinfo
    order by duracao ASC
LIMIT 5;