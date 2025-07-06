#!/bin/bash

read -p "Digite uma palavra: " palavra # Lê a palavra do usuário

palavra=$(echo "$palavra" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]') # Remove espaços e transforma em minúsculas

invertida=$(echo "$palavra" | rev) # inverte a palavra

if [ "$palavra" == "$invertida" ]; then # condição que verifica se a palavra é igual a sua versão invertida
    echo "A palavra \"$palavra\" é um palíndromo!"
else
    echo "A palavra \"$palavra\" NÃO é um palíndromo!"
fi

# tr - transforma os caracteres de uma string, o primeiro parâmetro é o que queremos remover e o segundo é o que queremos colocar no lugar
# -d remove os caracteres que estão no primeiro parâmetro, e o segundo parâmetro é o que queremos colocar no lugar
# [:space:] remove os espaços e [:upper:] transforma em minúsculas
# rev inverte a string, ou seja, transforma a palavra em sua versão invertida