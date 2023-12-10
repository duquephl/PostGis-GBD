-- FUNÇÕES DO POSTGIS

-- Cálculo da área total do campus (somente Alegre):

SELECT ST_Area(p.geom::geography) AS area_total
FROM poligonos AS p
WHERE nome = 'Campus UFES Alegre';

-- Cálculo da área total do campus (somente Alegre) por aluno:

SELECT ST_Area(p.geom::geography) / 3000 AS area_por_aluno
FROM poligonos AS p
WHERE nome = 'Campus UFES Alegre';

-- Distância (em linha reta) percorrida por um estudante do DCOMP 
-- com duas aulas em Alegre:

SELECT
  ST_DistanceSphere(
    (SELECT geom FROM pontos WHERE nome = 'Chichiu'),
    (SELECT geom FROM pontos WHERE nome = 'Reuni')
  );

-- Distância (em linha reta) percorrida por um estudante com aula em Alegre e na Área Experimental de Rive:

SELECT
  ST_DistanceSphere(
    (SELECT geom FROM pontos WHERE nome = 'Prédio Central'),
    (SELECT geom FROM pontos WHERE nome = 'Área de Rive - Alegre')
   )/1000 AS distancia_km;

-- Distância (em linha reta) percorrida por um estudante com aula em Alegre e na Área Experimental de Jerônimo Monteiro:

SELECT
  ST_DistanceSphere(
    (SELECT geom FROM pontos WHERE nome = 'Prédio Central'),
    (SELECT geom FROM pontos WHERE nome = 'Área de Jerônimo Monteiro')
   )/1000 AS distancia_km;

-- Distância (em linha reta) percorrida por um estudante com aula  em Alegre e na Área Experimental de São José do Calçado:

SELECT
  ST_DistanceSphere(
    (SELECT geom FROM pontos WHERE nome = 'Prédio Central'),
    (SELECT geom FROM pontos WHERE nome = 'Área de São José do Calçado')
  )/1000 AS distancia_km;

-- Cálculo do comprimento total das ruas dentro do campus:

SELECT
  ST_Length(geom::geography) AS comprimento_total
FROM  linhas
WHERE
  nome = 'Ruas internas';