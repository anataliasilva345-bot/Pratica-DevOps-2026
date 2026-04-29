#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: par-ou-impar.sh
# Description: Verifica se um número é par ou ímpar
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./par-ou-impar.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_par_impar.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando verificação de número par ou ímpar"

echo "Insira um número:"
read numero

resultado=$((numero % 2))

if [ "$resultado" -eq 0 ]; then
    echo "O número $numero é par"
    log "$numero é par"
else
    echo "O número $numero é ímpar"
    log "$numero é ímpar"
fi

# END
