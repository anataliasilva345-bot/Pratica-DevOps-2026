#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: gerencia-diretorio.sh
# Description: Cria um diretório, acessa, lista conteúdo e remove
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./gerencia-diretorio.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_gerencia_diretorio.log"
DIR="teste"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando gerenciamento de diretório"

# Criar diretório (evita erro se já existir)
mkdir -p "$DIR"
echo "Diretório '$DIR' criado"

cd "$DIR" || exit 1
echo "Conteúdo do diretório:"
ls

cd ..
rmdir "$DIR"
echo "Diretório '$DIR' removido"

log "Diretório $DIR criado e removido com sucesso"

# END
