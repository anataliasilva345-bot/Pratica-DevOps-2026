#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: compara-numeros.sh
# Description: Compara dois números e informa a relação entre eles
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./compara-numeros.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_compara_numeros.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando comparação de números"

echo "Insira o primeiro número:"
read numero1

echo "Insira o segundo número:"
read numero2

if [ "$numero1" -gt "$numero2" ]; then
    echo "O primeiro número é maior que o segundo"
    log "$numero1 é maior que $numero2"

elif [ "$numero1" -lt "$numero2" ]; then
    echo "O primeiro número é menor que o segundo"
    log "$numero1 é menor que $numero2"

elif [ "$numero1" -eq "$numero2" ]; then
    echo "Os números são iguais"
    log "$numero1 é igual a $numero2"
fi

# END
