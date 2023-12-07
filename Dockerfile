# Use a imagem oficial do PostgreSQL como base
FROM postgres:latest

# Defina as variáveis de ambiente para configurar o usuário e a senha
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

# Defina o nome do banco de dados (opcional)
ENV POSTGRES_DB=postgres

# Baixar o cliente do redis
RUN apt update -y \
    && apt install -y redis\
    && apt install -y redis-tools

# Exponha a porta padrão do PostgreSQL 5432 e a porta do Redis 6379
EXPOSE 5432 6379
