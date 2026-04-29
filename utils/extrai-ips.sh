#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: extrai-ips.sh
# Description: Extrai endereços IP de um arquivo de log e gera um relatório
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./extrai-ips.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_extrai_ips.log"
LOG="$HOME/exercicios-shell/log.txt"
TMP="/tmp/ips_temp.txt"
RELATORIO="$HOME/exercicios-shell/relatorio_final.txt"

# FUNCTIONS
log_msg(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

extrair_ips(){
    if [ ! -f "$LOG" ]; then
        echo "Arquivo de log não encontrado: $LOG"
        log_msg "Erro: arquivo $LOG não existe"
        return 1
    fi

    grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' "$LOG" > "$TMP"
    log_msg "IPs extraídos para arquivo temporário"
}

# CODE
log_msg "Iniciando extração de IPs"

extrair_ips

if [ -f "$TMP" ]; then
    cat "$TMP" >> "$RELATORIO"
    echo "Relatório atualizado em: $RELATORIO"
    log_msg "IPs adicionados ao relatório final"

    rm "$TMP"
    log_msg "Arquivo temporário removido"
else
    echo "Erro ao gerar arquivo temporário"
    log_msg "Erro: arquivo temporário não criado"
fi

# END
