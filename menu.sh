#!/usr/bin/env bash
# ------------------------------------------------------------ #
# Script Name: menu.sh
# Description: Menu principal para executar os scripts da pasta utils
# Author: Anatalia Araujo
# Date: 2026-04-21
# ------------------------------------------------------------ #
# Usage:
#   $ ./menu.sh
# ------------------------------------------------------------ #
# Tested on:
#   Bash
# ------------------------------------------------------------ #
# History:
#   v1.0 - criação do script
# ------------------------------------------------------------ #

# VARIABLES
LOG_FILE="../logs/$(date +%Y-%m-%d)_menu.log"

# FUNCTIONS
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

executar_script(){
    script="$1"

    if [ -x "$script" ]; then
        log "Executando script: $script"
        ./"$script"
    else
        echo "Erro: script $script não encontrado ou sem permissão de execução"
        log "Erro ao executar: $script"
    fi
}


log "Iniciando menu principal"

while true; do
    echo "================ MENU PRINCIPAL ================"
    echo "1  - Boas-vindas"
    echo "2  - Calcula idade"
    echo "3  - Gera senha"
    echo "4  - Leitura de valores"
    echo "5  - Informações do sistema"
    echo "6  - Calculadora"
    echo "7  - Comparar palavras"
    echo "8  - Comparar números"
    echo "9  - Comparar strings em ordem alfabética"
    echo "10 - Par ou ímpar"
    echo "11 - Validar argumentos"
    echo "12 - Verificar arquivo ou diretório"
    echo "13 - Buscar logs"
    echo "14 - Buscar código em log"
    echo "15 - Gerenciar diretório"
    echo "16 - Monitoramento de disco"
    echo "17 - Informações do usuário"
    echo "18 - Extrair e-mails"
    echo "19 - Extrair IPs"
    echo "20 - Analisar log"
    echo "21 - Validador (email, CPF e data)"
    echo "0  - Sair"
    echo "================================================"
    read -p "Escolha uma opção: " op

    case $op in
        1) executar_script "boas-vindas.sh" ;;
        2) executar_script "calcula-idade.sh" ;;
        3) executar_script "gera-senha.sh" ;;
        4) executar_script "leitura-valores.sh" ;;
        5) executar_script "info-sistema.sh" ;;
        6) executar_script "calculadora.sh" ;;
        7) executar_script "compara-palavras.sh" ;;
        8) executar_script "compara-numeros.sh" ;;
        9) executar_script "compara-strings-ordem.sh" ;;
        10) executar_script "par-ou-impar.sh" ;;
        11)
            echo "Esse script precisa de 3 argumentos."
            read -p "Digite o argumento 1: " a1
            read -p "Digite o argumento 2: " a2
            read -p "Digite o argumento 3: " a3
            ./valida-argumentos.sh "$a1" "$a2" "$a3"
            ;;
        12) executar_script "verifica-arquivo.sh" ;;
        13) executar_script "busca-logs.sh" ;;
        14) executar_script "busca-codigo-log.sh" ;;
        15) executar_script "gerencia-diretorio.sh" ;;
        16) executar_script "monitoramento-disco.sh" ;;
        17) executar_script "info-usuario.sh" ;;
        18)
            read -p "Digite o nome do arquivo para extrair e-mails: " arquivo_email
            ./extrai-emails.sh "$arquivo_email"
            ;;
        19) executar_script "extrai-ips.sh" ;;
        20) executar_script "analisa-log.sh" ;;
        21) executar_script "validador.sh" ;;
        0)
            echo "Saindo..."
            log "Usuário encerrou o menu principal"
            break
            ;;
        *)
            echo "Opção inválida"
            log "Opção inválida no menu"
            ;;
    esac

    echo ""
    read -p "Pressione ENTER para continuar..."
    clear
done

# END
