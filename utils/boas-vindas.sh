#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: boas-vindas.sh
# Description: Coleta dados do usuário e exibe mensagem de boas-vindas
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./boas-vindas.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_boas_vindas.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando script de boas-vindas"

echo "Bem-vindo ao sistema"

echo "Digite seu nome:"
read nome

echo "Digite a disciplina que está cursando:"
read disciplina

echo "Digite seu semestre atual:"
read semestre

echo ""

echo "Olá, $nome! Bem-vindo(a) à $disciplina no $semestre semestre."
echo "Data e hora atual: $(date)"
echo "Seu diretório home é $HOME"

log "Usuário $nome executou o script"

# END
