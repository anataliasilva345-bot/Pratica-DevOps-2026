#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: info-sistema.sh
# Description: Exibe informações básicas do usuário e do sistema
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./info-sistema.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_info_sistema.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando script de informações do sistema"

echo "Usuário atual: $USER"
echo "Diretório home: $HOME"
echo "Diretório atual: $(pwd)"

log "Informações exibidas para o usuário $USER"

# END
