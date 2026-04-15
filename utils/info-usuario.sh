#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: info-usuario.sh
# Description: Exibe informações do usuário atual e seus grupos
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./info-usuario.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_info_usuario.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando consulta de informações do usuário"

echo "Usuário atual:"
whoami

echo ""
echo "Informações de ID e grupos:"
id

log "Informações do usuário exibidas"

# END
