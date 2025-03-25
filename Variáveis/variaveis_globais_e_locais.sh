#!/bin/bash

# variaveis globais e locais

# variáveis globais (são acessíveis em todo o script)
nome1="Lucas"

mostrar_nome() {
    echo "O nome é: $nome1"
}
mostrar_nome

echo "variavel global: $nome1"

# variáveis locais (são acessíveis apenas dentro da função)
funcao() {
    local nome2="Lucas"
    echo "Variável local: $nome2" 
}
funcao

echo "O nome2 é: $nome2" # não será possível acessar a variável nome2 fora da função