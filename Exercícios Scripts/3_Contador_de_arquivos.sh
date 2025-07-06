#!/bin/bash

read -p "Digite o caminho do diretório: " path # leitura do caminho do diretório


if [ -d "$path" ]; then # condicional que verifica se o caminho informado é um diretório
    arquivos=$(find "$path" -type f | wc -l) # conta quantos arquivos existem no diretório
    diretorios=$(find "$path" -type d | wc -l) # conta quantos diretórios existem no diretório
    
    echo "Arquivos: $arquivos" # mostra a quantidade de arquivos
    echo "Diretórios: $diretorios" # mostra a quantidade de diretórios
else 
    echo "Erro: O caminho informado não é um diretório válido." # se não for um diretório mostra uma mensagem de erro
fi