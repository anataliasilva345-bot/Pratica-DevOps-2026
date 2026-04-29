# 🚀 Laboratório DevOps - Prática 2

## atividade 2.1 - Análise de Logs

Script em Bash para análise de logs Apache no formato CLF.

### 🔍uncionalidades:
- Extração de IPs únicos
- Contagem de métodos HTTP
- Detecção de métodos perigosos (DELETE, PUT)
- Análise de URLs acessadas
- Identificação dos TOP 10 IPs
- Geração de relatório automático

### Execução:
```bash
./logs/regex_log_analyzer.sh apache.log
