#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: extrai-emails.sh
# Description: Extrai endereços de e-mail de um arquivo informado
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./extrai-emails.sh arquivo.txt
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_extrai_emails.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

extrai_emails(){
    arquivo="$1"

    if [ ! -f "$arquivo" ]; then
        echo "Arquivo não encontrado!"
        log "Erro: arquivo $arquivo não existe"
        return 1
    fi

    grep -E '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}' "$arquivo"
    log "Extração de e-mails realizada no arquivo $arquivo"
}

# CODE
log "Iniciando extração de e-mails"

if [ "$#" -ne 1 ]; then
    echo "Uso: $0 arquivo.txt"
    log "Erro: número de argumentos inválido"
    exit 1
fi

extrai_emails "$1"

# END
