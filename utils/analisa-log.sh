#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: analisa-log.sh
# Description: Analisa o arquivo de log do sistema e extrai mensagens de erro
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./analisa-log.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_analisa_log.log"
LOG="$HOME/exercicios-shell/syslog"
SAIDA="$HOME/exercicios-shell/erros_$(date +%Y-%m-%d).txt"

# FUNCTIONS
log_msg(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

analisa_log(){
    if [ ! -f "$LOG" ]; then
        echo "Arquivo de log não encontrado!"
        log_msg "Erro: arquivo $LOG não existe"
        exit 1
    fi

    grep "ERROR" "$LOG" > "$SAIDA"
    echo "Relatório gerado em: $SAIDA"
    log_msg "Erros extraídos de $LOG para $SAIDA"
}

# CODE
log_msg "Iniciando análise de logs"

analisa_log

# END
