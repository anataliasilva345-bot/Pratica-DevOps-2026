#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: gera-senha.sh
# Description: Gera uma senha simples e permite salvar em arquivo
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./gera-senha.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_gera_senha.log"
ARQUIVO_SENHA="senha.txt"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando script de geração de senha"

echo "Insira uma palavra-chave:"
read palavra

echo "Insira um número:"
read numero

senha="${palavra}_${numero}"

echo ""
echo "Sua senha gerada foi: $senha"
echo "Deseja salvar a senha (s/n)?"
read opcao

if [ "$opcao" = "s" ]; then
    echo "$senha" > "$ARQUIVO_SENHA"
    echo "Senha salva com sucesso"
    log "Senha salva no arquivo"
else
    echo "Senha não salva"
    log "Usuário optou por não salvar a senha"
fi

# END
