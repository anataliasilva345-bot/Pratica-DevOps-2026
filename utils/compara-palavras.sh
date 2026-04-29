#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: compara-palavras.sh
# Description: Compara duas palavras informadas pelo usuário
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./compara-palavras.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_compara_palavras.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando comparação de palavras"

echo "Insira a primeira palavra:"
read palavra1

echo "Insira a segunda palavra:"
read palavra2

if [ "$palavra1" = "$palavra2" ]; then
    echo "As palavras são iguais"
    log "Palavras iguais: $palavra1"
else
    echo "As palavras são diferentes"
    log "Palavras diferentes: $palavra1 e $palavra2"
fi

# END
