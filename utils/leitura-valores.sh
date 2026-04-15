#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: leitura-valores.sh
# Description: Lê dois valores informados pelo usuário e exibe na tela
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./leitura-valores.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_leitura_valores.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando script de leitura de valores"

echo "Insira o 1º valor:"
read valor1

echo "Insira o 2º valor:"
read valor2

echo ""
echo "O 1º valor foi: $valor1"
echo "O 2º valor foi: $valor2"

log "Valores informados: $valor1 e $valor2"

# END
