select tipo_dragao, count(tipo_dragao) as quantidade_abates from monsters 
where  tipo_dragao in( 'FIRE_DRAGON','EARTH_DRAGON', 'AIR_DRAGON','WATER_DRAGON',  'ELDER_DRAGON')
group by tipo_dragao
order by quantidade_abates desc;