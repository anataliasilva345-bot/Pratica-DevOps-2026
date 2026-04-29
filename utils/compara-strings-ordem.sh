#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: compara-strings-ordem.sh
# Description: Compara duas strings e informa a ordem alfabética entre elas
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./compara-strings-ordem.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_compara_strings.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando comparação alfabética de strings"

echo "Digite a primeira string:"
read str1

echo "Digite a segunda string:"
read str2

if [[ "$str1" < "$str2" ]]; then
    echo "$str1 vem antes de $str2"
    log "$str1 vem antes de $str2"

elif [[ "$str1" > "$str2" ]]; then
    echo "$str2 vem antes de $str1"
    log "$str2 vem antes de $str1"

else
    echo "As duas strings são iguais"
    log "Strings iguais: $str1"
fi

# END
