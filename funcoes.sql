-- FUNÇÕES DO POSTGIS

SELECT
  ST_DistanceSphere(
    (SELECT geom FROM pontos WHERE nome = 'Prédio Central'),
    (SELECT geom FROM pontos WHERE nome = 'Prédio Novo')
  );

SELECT SUM(distancia) AS distancia_total
FROM (
  SELECT
    ST_DistanceSphere(p1.geom, p2.geom) AS distancia
  FROM pontos p1, pontos p2
  WHERE p1.nome != p2.nome
);

SELECT AVG(distancia) AS media_distancia
FROM (
  SELECT
    ST_DistanceSphere(p1.geom, p2.geom) AS distancia
  FROM pontos p1, pontos p2
  WHERE p1.nome != p2.nome
);

SELECT ST_Area(geom::geography) AS area_geografica
FROM poligonos
WHERE nome = 'Campus UFES Alegre';

