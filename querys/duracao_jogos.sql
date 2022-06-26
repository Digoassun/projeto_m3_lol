#Liga que teve o jogo com a maior duração
SELECT liga,duracao
FROM matchinfo
order by duracao desc
limit 1;

#Partida mais longa no CBLoL
SELECT liga,duracao
FROM matchinfo
where liga = 'CBLoL'
order by duracao desc
limit 1;
