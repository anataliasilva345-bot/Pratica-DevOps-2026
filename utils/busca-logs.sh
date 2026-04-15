#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: busca-logs.sh
# Description: Busca arquivos .log dentro do diretório /var/log
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./busca-logs.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_busca_logs.log"
DIRETORIO="/var/log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando busca de arquivos .log"

echo "Buscando arquivos .log em $DIRETORIO..."

if [ -d "$DIRETORIO" ]; then
    find "$DIRETORIO" -type f -name "*.log"
    log "Busca realizada com sucesso em $DIRETORIO"
else
    echo "Diretório $DIRETORIO não existe"
    log "Erro: diretório $DIRETORIO não encontrado"
fi

# END
