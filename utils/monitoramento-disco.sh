#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: monitoramento-disco.sh
# Description: Exibe informações de uso de disco e tamanho de diretório
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./monitoramento-disco.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_monitoramento_disco.log"
DIR="/home"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando monitoramento de disco"

echo "Espaço livre nos discos:"
df -h

echo ""
echo "Tamanho do diretório $DIR:"

if [ -d "$DIR" ]; then
    du -sh "$DIR"
    log "Consulta de uso do diretório $DIR realizada"
else
    echo "Diretório $DIR não encontrado"
    log "Erro: diretório $DIR não existe"
fi

# END
