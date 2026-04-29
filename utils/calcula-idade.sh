#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: calcula-idade.sh
# Description: Calcula a idade do usuário com base no ano de nascimento
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./calcula-idade.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_calcula_idade.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando script de cálculo de idade"

echo "Insira seu nome:"
read nome

echo "Qual o seu ano de nascimento?"
read ano

ano_atual=$(date +%Y)
idade=$((ano_atual - ano))

echo ""
echo "Nome: $nome"
echo "Ano de Nascimento: $ano"
echo "Idade aproximada: $idade anos"

log "Usuário $nome calculou idade"

# END
