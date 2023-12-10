-- CRIAÇÃO DA TABELA

CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE pontos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    descricao TEXT,
    geom GEOMETRY(Point, 4326)
);

-- INSERÇÃO DE DADOS

INSERT INTO pontos (nome, descricao, geom) VALUES
  ('Prédio Central', 'Laboratórios diversos e salas de aula.', ST_GeomFromText('POINT(-41.536037 -20.7621458)', 4326)),
  ('Prédio Novo', 'Laboratórios de Biologia, Matemática e salas de aula de uso geral', ST_GeomFromText('POINT(-41.5367076 -20.7611827)', 4326)),
  ('Reuni', 'Laboratórios de Computação, Eng. Química, Fármácia, Licenciaturas etc.', ST_GeomFromText('POINT(-41.5358788 -20.7611376)', 4326)),
  ('Engenharia de Alimentos e Nutrição', 'Laboratórios diversos e salas de aula.', ST_GeomFromText('POINT(-41.5369892 -20.7607137)', 4326)),
  ('Anatomia Animal', 'Laboratório de Anatomia Animal', ST_GeomFromText('POINT(-41.5368846 -20.7608893)', 4326)),
  ('Biotecnologia', 'Laboratórios de Biotecnologia', ST_GeomFromText('POINT(-41.5367425 -20.7615489)', 4326)),
  ('Chichiu', 'Informática e Microscopia', ST_GeomFromText('POINT(-41.5365359 -20.7620932)', 4326)),
  ('Prédio da Pós', 'Auditório e salas de aula.', ST_GeomFromText('POINT(-41.5355542 -20.7612881)', 4326)),
  ('NUDEMAFI', 'Laboratórios de Entomologia e Fitopatologia ', ST_GeomFromText('POINT(-41.5366566 -20.7619928)', 4326)),
  ('Prédio Administrativo', 'Auditório e salas de aula', ST_GeomFromText('POINT(-41.535504 -20.761854)', 4326)),
  ('Prédio da Geologia', 'Laboratórios e salas de aula', ST_GeomFromText('POINT(-41.536625 -20.760388)', 4326)),
  ('Biblioteca', 'Biblioteca Universitária', ST_GeomFromText('POINT(-41.535703 -20.761516)', 4326)),
  ('Tijolinho', 'Fitotecnia e salas de aula', ST_GeomFromText('POINT(-41.536705 -20.761785)', 4326)),
  ('Área de Rive - Alegre', 'Hospital Veterinário e laboratórios diversos.', ST_GeomFromText('POINT(-41.4889401 -20.7512882)', 4326)),
  ('Área de São José do Calçado', 'Fazenda Experimental', ST_GeomFromText('POINT(-41.6480702 -21.0642924)', 4326)),
  ('Área de Jerônimo Monteiro', 'Ciências Florestais e da Madeira', ST_GeomFromText('POINT(-41.4056709 -20.7957922)', 4326));

