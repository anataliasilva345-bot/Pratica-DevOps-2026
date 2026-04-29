#!/usr/bin/env bash
# ------------------------------------------------------------------------
# Script Name: file_operations.sh
# Description: Multi-functional file operations script
# Written by: ANATALIA ARAUJO
# ------------------------------------------------------------------------

OPERATION="$1"
ARG1="$2"
ARG2="$3"


show_menu() {
    clear
    echo "=========================================="
    echo "     FILE OPERATIONS - DevOps Tools"
    echo "=========================================="
    echo ""
    echo "1. Rename files (add prefix)"
    echo "2. Convert images (JPG to PNG)"
    echo "3. Compress files/directories"
    echo "4. Extract compressed files"
    echo "5. Change file permissions"
    echo "6. Search files by pattern"
    echo "0. Exit"
    echo ""
    echo -n "Choose an option: "
}


rename_files() {
    echo "Digite o prefixo:"
    read prefix

    for file in *; do
        if [ -f "$file" ]; then
            mv "$file" "${prefix}_${file}"
        fi
    done

    echo "Arquivos renomeados!"
}


convert_images() {
    for img in *.jpg; do
        if [ -f "$img" ]; then
            convert "$img" "${img%.jpg}.png"
        fi
    done

    echo "Conversão concluída!"
}

compress_files() {
    echo "Digite o nome do arquivo de saída:"
    read output

    tar -czf "$output.tar.gz" *

    echo "Compactado como $output.tar.gz"
}

extract_files() {
    echo "Digite o arquivo para extrair:"
    read file

    if [[ "$file" == *.tar.gz ]]; then
        tar -xzf "$file"
    elif [[ "$file" == *.zip ]]; then
        unzip "$file"
    else
        echo "Formato não suportado"
    fi
}

change_permissions() {
    echo "Digite o arquivo:"
    read file

    echo "Digite a permissão (ex: 755):"
    read perm

    chmod "$perm" "$file"

    echo "Permissão alterada!"
}


search_files() {
    echo "Digite o padrão (nome do arquivo):"
    read pattern

    find . -name "*$pattern*"
}


if [ "$OPERATION" = "--menu" ] || [ -z "$OPERATION" ]; then
    while true; do
        show_menu
        read option

        case $option in
            1) rename_files ;;
            2) convert_images ;;
            3) compress_files ;;
            4) extract_files ;;
            5) change_permissions ;;
            6) search_files ;;
            0) echo "Goodbye!"; exit 0 ;;
            *) echo "Opção inválida" ;;
        esac

        echo ""
        echo -n "Pressione Enter para continuar..."
        read
    done

else
    case "$OPERATION" in
        rename) rename_files ;;
        convert) convert_images ;;
        compress) compress_files ;;
        extract) extract_files ;;
        chmod) change_permissions ;;
        search) search_files ;;
        *) echo "Usage: $0 [--menu|rename|convert|compress|extract|chmod|search]" ;;
    esac
fi
