#!/bin/bash

# Corrigir permissões
chmod +w infra/.data
echo "Executando o script cleanupDev.sh..."
docker-compose -f infra/docker-compose.dev.yml down

# Verifica se a pasta .data existe
if [ -d "infra/.data" ]; then
    echo "A pasta .data existe. Removendo..."
    sudo rm -rf infra/.data
    sleep 5
    echo "A pasta .data foi removida com sucesso."
else
    echo "A pasta .data não existe."
fi
