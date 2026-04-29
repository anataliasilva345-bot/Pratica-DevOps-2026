#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: calculadora.sh
# Description: Realiza operações matemáticas básicas entre dois números
# Author: Anatalia Araujo
# Date: 2026-04-15
# ------------------------------------------------------------ #
# Usage:
#   $ ./calculadora.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_calculadora.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# CODE
log "Iniciando calculadora"

echo "Digite o primeiro número:"
read num1

echo "Digite o operador (+, -, *, /, %):"
read op

echo "Digite o segundo número:"
read num2

case $op in
  +)
    resultado=$((num1 + num2))
    ;;
  -)
    resultado=$((num1 - num2))
    ;;
  \*)
    resultado=$((num1 * num2))
    ;;
  /)
    if [ "$num2" -eq 0 ]; then
      echo "Erro: divisão por zero"
      log "Erro: divisão por zero"
      exit 1
    fi
    resultado=$((num1 / num2))
    ;;
  %)
    resultado=$((num1 % num2))
    ;;
  *)
    echo "Erro: operador inválido"
    log "Erro: operador inválido"
    exit 1
    ;;
esac

echo "Resultado: $resultado"
log "Cálculo realizado: $num1 $op $num2 = $resultado"

# END
