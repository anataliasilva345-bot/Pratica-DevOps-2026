#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: verifica-arquivo.sh
# Description: Verifica se um caminho informado é arquivo, diretório ou não existe
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./verifica-arquivo.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_verifica_arquivo.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando verificação de arquivo/diretório"

echo "Digite o nome do arquivo ou diretório:"
read nome

if [ -f "$nome" ]; then
    echo "O caminho existe e é um arquivo regular"
    log "$nome é um arquivo"

elif [ -d "$nome" ]; then
    echo "O caminho existe e é um diretório"
    log "$nome é um diretório"

else
    echo "O arquivo ou diretório não existe"
    log "$nome não existe"
fi

# END
