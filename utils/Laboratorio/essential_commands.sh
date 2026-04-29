#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   essential_commands.sh
# Description:   Demonstrates essential DevOps commands
# Site:          [SEU_GITHUB_URL]
# Written by:    Anatalia Araujo
# Maintenance:   Anatalia Araujo
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./essential_commands.sh
# ------------------------------------------------------------------------ #
# Repository:
#       Path: utils/essential_commands.sh
# ------------------------------------------------------------------------ #
# History:
#        v1.0 15/04/2026 - Anatalia Araujo
#           - Initial version
# ------------------------------------------------------------------------ #

# Variables --------------------------------------------------------------- #
readonly GREEN='\033[0;32m'
readonly BLUE='\033[0;34m'
readonly YELLOW='\033[1;33m'
readonly NC='\033[0m'

readonly TEMP_DIR="./temp_essential_demo"
readonly TEMP_FILE="$TEMP_DIR/exemplo.txt"
readonly TEMP_GZIP_FILE="$TEMP_FILE.gz"

# Functions --------------------------------------------------------------- #

print_section() {
    echo -e "${BLUE}============================================================${NC}"
    echo -e "${YELLOW}$1${NC}"
    echo -e "${BLUE}============================================================${NC}"
}

print_command() {
    echo -e "${GREEN}\$ $1${NC}"
}

# Main Code --------------------------------------------------------------- #

clear
mkdir -p "$TEMP_DIR"

print_section "ESSENTIAL DEVOPS COMMANDS DEMO"
echo ""

# 1. Comando pwd
print_section "1. pwd - Print Working Directory"
print_command "pwd"
echo "   Descrição: Mostra o diretório atual"
echo "   Help: pwd --help"
echo "   Exemplo:"
echo "   Diretório atual: $(pwd)"
echo ""

# 2. Comando date
print_section "2. date - Display date and time"
print_command "date"
echo "   Descrição: Exibe ou define data e hora do sistema"
echo "   Help: date --help"
echo "   Exemplo:"
echo "   Data atual: $(date)"
echo "   Data formatada: $(date '+%Y-%m-%d %H:%M:%S')"
echo ""

# 3. Comando touch
print_section "3. touch - Create files"
print_command "touch exemplo.txt"
echo "   Descrição: Cria um arquivo vazio ou atualiza sua data de modificação"
echo "   Help: touch --help"
echo "   Exemplo:"
touch "$TEMP_FILE"
echo "   Arquivo criado: $TEMP_FILE"
echo ""

# 4. Comando cat
print_section "4. cat - Display file content"
print_command "cat exemplo.txt"
echo "   Descrição: Exibe o conteúdo de um arquivo"
echo "   Help: cat --help"
echo "   Exemplo:"
echo "Linha 1: comando cat" > "$TEMP_FILE"
echo "Linha 2: exemplo prático" >> "$TEMP_FILE"
cat "$TEMP_FILE"
echo ""

# 5. Comando grep
print_section "5. grep - Search text patterns"
print_command "grep 'cat' exemplo.txt"
echo "   Descrição: Procura padrões de texto dentro de arquivos"
echo "   Help: grep --help"
echo "   Exemplo:"
grep "cat" "$TEMP_FILE"
echo ""

# 6. Comando curl
print_section "6. curl - Transfer data from URLs"
print_command "curl -I https://example.com"
echo "   Descrição: Faz requisições para URLs e APIs"
echo "   Help: curl --help"
echo "   Exemplo:"
curl -I https://example.com 2>/dev/null | head -n 5
echo ""

# 7. Comando gzip
print_section "7. gzip - Compress files"
print_command "gzip exemplo.txt"
echo "   Descrição: Compacta arquivos no formato .gz"
echo "   Help: gzip --help"
echo "   Exemplo:"
if [ -f "$TEMP_FILE" ]; then
    gzip -kf "$TEMP_FILE"
    echo "   Arquivo compactado gerado: $TEMP_GZIP_FILE"
else
    echo "   Arquivo para compactação não encontrado"
fi
echo ""

# 8. Comando chmod
print_section "8. chmod - Change file permissions"
print_command "chmod +x exemplo.txt"
echo "   Descrição: Altera permissões de arquivos e diretórios"
echo "   Help: chmod --help"
echo "   Exemplo:"
chmod +x "$TEMP_FILE"
ls -l "$TEMP_FILE"
echo ""

# 9. Comando pgrep
print_section "9. pgrep - Find process by name"
print_command "pgrep bash"
echo "   Descrição: Localiza processos pelo nome"
echo "   Help: pgrep --help"
echo "   Exemplo:"
pgrep bash | head -n 5
echo ""

# 10. Comando ps
print_section "10. ps - Report process status"
print_command "ps"
echo "   Descrição: Mostra os processos em execução"
echo "   Help: ps --help"
echo "   Exemplo:"
ps | head -n 5
echo ""

# 11. Comando df
print_section "11. df - Disk free space"
print_command "df -h"
echo "   Descrição: Exibe o espaço livre e usado nos sistemas de arquivos"
echo "   Help: df --help"
echo "   Exemplo:"
df -h | head -n 10
echo ""

# 12. Comando du
print_section "12. du - Disk usage"
print_command "du -sh ."
echo "   Descrição: Mostra o tamanho de arquivos e diretórios"
echo "   Help: du --help"
echo "   Exemplo:"
du -sh .
echo ""

# Cleanup
print_section "CLEANUP"
print_command "rm -rf ./temp_essential_demo"
rm -rf "$TEMP_DIR"
echo "   Arquivos temporários removidos com sucesso"
echo ""

# ------------------------------------------------------------------------ #
# END #
