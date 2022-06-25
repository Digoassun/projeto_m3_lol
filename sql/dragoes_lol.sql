#GERAL: quais os dragões mais abatidos?
SELECT count(tipo_dragao) as quantidade, tipo_dragao
FROM monsters
where tipo_dragao = 'EARTH_DRAGON';

SELECT count(tipo_dragao) as quantidade, tipo_dragao
FROM monsters
where tipo_dragao = 'AIR_DRAGON';

SELECT count(tipo_dragao) as quantidade, tipo_dragao
FROM monsters
where tipo_dragao = 'WATER_DRAGON';


SELECT count(tipo_dragao) as quantidade, tipo_dragao
FROM monsters
where tipo_dragao = 'FIRE_DRAGON';

SELECT count(tipo_dragao) as quantidade, tipo_dragao
FROM monsters
where tipo_dragao = 'ELDER_DRAGON';