#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: validador.sh
# Description: Valida e-mail, CPF e data com menu interativo
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./validador.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_validador.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

valida_email(){
    email="$1"

    if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
        echo "Válido"
        log "Email válido: $email"
    else
        echo "Inválido - E-mail incorreto"
        log "Email inválido: $email"
    fi
}

valida_cpf(){
    cpf="$1"
    cpf=$(echo "$cpf" | tr -d '.-')

    if [[ ! "$cpf" =~ ^[0-9]{11}$ ]]; then
        echo "Inválido - CPF deve ter 11 dígitos"
        log "CPF inválido: $cpf"
        return
    fi

    echo "Válido"
    log "CPF válido: $cpf"
}

valida_data(){
    data="$1"

    if [[ ! "$data" =~ ^[0-9]{2}/[0-9]{2}/[0-9]{4}$ ]]; then
        echo "Inválido - Formato de data incorreto"
        log "Data inválida (formato): $data"
        return
    fi

    dia=$(echo "$data" | cut -d'/' -f1)
    mes=$(echo "$data" | cut -d'/' -f2)
    ano=$(echo "$data" | cut -d'/' -f3)

    if (( dia < 1 || dia > 31 || mes < 1 || mes > 12 )); then
        echo "Inválido - Data inexistente"
        log "Data inválida (valores): $data"
    else
        echo "Válido"
        log "Data válida: $data"
    fi
}


log "Iniciando sistema validador"

while true; do
    echo "===== MENU ====="
    echo "1 - Validar Email"
    echo "2 - Validar CPF"
    echo "3 - Validar Data"
    echo "0 - Sair"
    read -p "Escolha uma opção: " op

    case $op in
        1)
            read -p "Digite o email: " email
            valida_email "$email"
            ;;
        2)
            read -p "Digite o CPF: " cpf
            valida_cpf "$cpf"
            ;;
        3)
            read -p "Digite a data (DD/MM/AAAA): " data
            valida_data "$data"
            ;;
        0)
            echo "Saindo..."
            log "Usuário encerrou o sistema"
            break
            ;;
        *)
            echo "Opção inválida"
            log "Opção inválida escolhida"
            ;;
    esac

    echo ""
done

# END
