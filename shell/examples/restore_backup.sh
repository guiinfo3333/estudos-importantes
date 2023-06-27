#!/bin/bash

# Configurações do banco de dados
DB_USER="postgres"
DB_PASSWORD="postgres"
DB_NAME="parcela_contas"
DB_BACKUP_FILE="parcelaconta_development.backup"

# Apaga o banco de dados existente
echo "Apagando o banco de dados..."
PGPASSWORD="$DB_PASSWORD" dropdb -U "$DB_USER" -h localhost -p 5432 "$DB_NAME"
echo "Banco de dados apagado."

# Cria o novo banco de dados
echo "Criando o novo banco de dados..."
PGPASSWORD="$DB_PASSWORD" createdb -U "$DB_USER" -h localhost -p 5432 "$DB_NAME"
echo "Novo banco de dados criado."

# Restaura o novo banco de dados a partir do backup
echo "Restaurando o novo banco de dados..."
PGPASSWORD="$DB_PASSWORD" pg_restore -U "$DB_USER" -h localhost -p 5432 -d "$DB_NAME" "$DB_BACKUP_FILE"
echo "Novo banco de dados restaurado."

echo "Processo concluído."
