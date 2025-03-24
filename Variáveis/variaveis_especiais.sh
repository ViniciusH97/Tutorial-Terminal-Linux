#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Nenhum argumento passado."
    echo "Use: $0 <arg1> <arg2>"
    exit 1
else
    echo "Argumentos passados: $@"
fi

#utilizando a variavel $? para verificar se o comando foi executado com sucesso

if [ $? -eq 0 ]; then
    echo "Comando executado com sucesso."
else
    echo "Comando falhou."
fi

# variáveis especiais
echo "Número de argumentos passados: $#"
echo "Todos os argumentos passados: $@"
echo "Último comando executado: $?"
echo "PID do script: $$"
echo "PID do último comando executado em background: $!"

