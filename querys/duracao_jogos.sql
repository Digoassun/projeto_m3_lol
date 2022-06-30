#Liga que teve o jogo com a maior duração
SELECT liga,duracao
FROM matchinfo
order by duracao desc
limit 1;

#Partida mais longa no CBLoL
SELECT liga,duracao, time_azul, time_vermelho
FROM matchinfo
where liga = 'CBLoL'
order by duracao desc
limit 1;
