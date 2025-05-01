#!/bin/bash

read -p "Digite uma palavra: " palavra # Lê a palavra do usuário

palavra=$(echo "$palavra" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]') # Remove espaços e transforma em minúsculas


invertida=$(echo "$palavra" | rev) # inverte a palavra

if [ "$palavra" == "$invertida" ]; then # condição que verifica se a palavra é igual a sua versão invertida
    echo "A palavra \"$palavra\" é um palíndromo!"
else
    echo "A palavra \"$palavra\" NÃO é um palíndromo!"
fi