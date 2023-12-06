# Comando para buildar o docker-compose
```bash
docker compose build
```

# Rodar o comando abaixo para rodar o docker-compose
```bash
docker-compose up 
```

# Entrar no container do banco de dados
```bash
docker exec -it tp_postgis bash
```

# Instalar o PostGIS
```bash
apt-get update && apt-get install -y postgis
```

# Entrar no banco de dados
```bash
psql -U postgres
```

# Instalar a Extensão PostGIS no PostgreSQL
```bash
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
```
