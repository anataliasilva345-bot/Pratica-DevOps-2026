#!/usr/bin/env bash
# ------------------------------------------------------------------------
# Script Name: regex_log_analyzer.sh
# Description: Análise de logs Apache (CLF)
# Author: Anatalia Araujo
# Usage: ./logs/regex_log_analyzer.sh apache.log
# ------------------------------------------------------------------------

LOG_FILE="$1"

if [ -z "$LOG_FILE" ]; then
    echo "Uso: $0 apache.log"
    exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
    echo "Arquivo não encontrado!"
    exit 1
fi

DIR="log_analysis_$(date +%Y%m%d_%H%M%S)"
mkdir "$DIR"

echo "Analisando logs..."


awk '{print $1}' "$LOG_FILE" | sort | uniq > "$DIR/1_unique_ips.txt"


awk '{print $6}' "$LOG_FILE" | tr -d '"' | sort | uniq -c > "$DIR/2_http_methods.txt"


grep -E '"(DELETE|PUT)' "$LOG_FILE" > "$DIR/3_dangerous_methods.txt"


awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr > "$DIR/4_urls.txt"


awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -10 > "$DIR/5_top_ips.txt"


{
echo "RELATÓRIO DE ANÁLISE DE LOG"
echo "==========================="
echo ""

echo "Total de IPs únicos:"
wc -l < "$DIR/1_unique_ips.txt"

echo ""
echo "Métodos HTTP:"
cat "$DIR/2_http_methods.txt"

echo ""
echo "Top 10 IPs:"
cat "$DIR/5_top_ips.txt"

echo ""
echo "Métodos perigosos encontrados:"
wc -l < "$DIR/3_dangerous_methods.txt"

} > "$DIR/report.txt"

echo "Análise concluída!"
echo "Resultados em: $DIR"
