#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: busca-codigo-log.sh
# Description: Busca um código específico em um arquivo de log e exibe as primeiras ocorrências
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./busca-codigo-log.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_busca_codigo.log"
CODIGO="4786228.66"
ARQUIVO="apache.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando busca por código no log"

if [ -f "$ARQUIVO" ]; then
    echo "Buscando código $CODIGO no arquivo $ARQUIVO..."
    grep "$CODIGO" "$ARQUIVO" | head -n 5
    log "Busca realizada para o código $CODIGO"
else
    echo "Arquivo $ARQUIVO não encontrado"
    log "Erro: arquivo $ARQUIVO não existe"
fi

# END
