#!/usr/bin/env bash
# ------------------------------------------------------------------------
# Script Name: essential_commands.sh
# Description: Demonstra comandos essenciais para DevOps
# Author: Anatalia Araujo
# Usage: ./utils/essential_commands.sh
# Version: 1.0
# ------------------------------------------------------------------------

clear


echo " ATIVIDADE 1.1 - COMANDOS ESSENCIAIS DEVOPS"
echo ""

echo "1) grep"
echo "Descrição: Busca textos dentro de arquivos."
echo "Exemplo: grep 'erro' log.txt"
echo "Help: grep --help"
echo "Demonstração:"
echo "erro no sistema" > log.txt
grep "erro" log.txt
echo ""

echo "2) touch"
echo "Descrição: Cria arquivos vazios ou atualiza data de modificação."
echo "Exemplo: touch arquivo.txt"
echo "Help: touch --help"
echo "Demonstração:"
touch arquivo_teste.txt
ls arquivo_teste.txt
echo ""

echo "3) curl"
echo "Descrição: Faz requisições para sites ou APIs."
echo "Exemplo: curl https://example.com"
echo "Help: curl --help"
echo "Demonstração:"
curl -I https://example.com
echo ""

echo "4) cat"
echo "Descrição: Exibe o conteúdo de arquivos."
echo "Exemplo: cat arquivo.txt"
echo "Help: cat --help"
echo "Demonstração:"
echo "Conteúdo de teste" > exemplo.txt
cat exemplo.txt
echo ""

echo "5) gzip"
echo "Descrição: Compacta arquivos."
echo "Exemplo: gzip arquivo.txt"
echo "Help: gzip --help"
echo "Demonstração:"
cp exemplo.txt exemplo_gzip.txt
gzip -f exemplo_gzip.txt
ls exemplo_gzip.txt.gz
echo ""

echo "6) chmod"
echo "Descrição: Altera permissões de arquivos."
echo "Exemplo: chmod +x script.sh"
echo "Help: chmod --help"
echo "Demonstração:"
chmod +x arquivo_teste.txt
ls -l arquivo_teste.txt
echo ""

echo "7) date"
echo "Descrição: Exibe data e hora do sistema."
echo "Exemplo: date"
echo "Help: date --help"
echo "Demonstração:"
date
echo ""

echo "8) pwd"
echo "Descrição: Mostra o diretório atual."
echo "Exemplo: pwd"
echo "Help: pwd --help"
echo "Demonstração:"
pwd
echo ""

echo "9) pgrep"
echo "Descrição: Procura processos pelo nome."
echo "Exemplo: pgrep bash"
echo "Help: pgrep --help"
echo "Demonstração:"
pgrep bash
echo ""

echo "10) ps"
echo "Descrição: Lista processos em execução."
echo "Exemplo: ps aux"
echo "Help: ps --help"
echo "Demonstração:"
ps
echo ""

echo "11) df"
echo "Descrição: Mostra uso de espaço em disco."
echo "Exemplo: df -h"
echo "Help: df --help"
echo "Demonstração:"
df -h
echo ""

echo "12) du"
echo "Descrição: Mostra o tamanho de arquivos e diretórios."
echo "Exemplo: du -sh ."
echo "Help: du --help"
echo "Demonstração:"
du -sh .
echo ""


echo " Demonstração finalizada com sucesso!"

