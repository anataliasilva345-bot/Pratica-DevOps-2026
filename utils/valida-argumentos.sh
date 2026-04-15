#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: valida-argumentos.sh
# Description: Valida se foram passados exatamente 3 argumentos via linha de comando
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./valida-argumentos.sh arg1 arg2 arg3
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_valida_argumentos.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando validação de argumentos"

if [ "$#" -ne 3 ]; then
    echo "Erro: insira 3 números válidos"
    echo "Uso: $0 argumento1 argumento2 argumento3"
    log "Erro: número incorreto de argumentos ($# fornecidos)"
    exit 1
fi

echo "Argumentos informados corretamente"
echo "Argumento 1: $1"
echo "Argumento 2: $2"
echo "Argumento 3: $3"

log "Argumentos recebidos: $1, $2, $3"

# END
