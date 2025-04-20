#!/bin/bash

# variável não declarada
echo "A variável não declarada: $nao_declarada" # não gera erro, mas imprime uma string vazia

# variável não definida
idade=20
echo "idade: $idade" # imprime o valor da variável idade
unset idade # removendo o valor da variável idade
echo "A variável idade foi removida: $idade" # imprime uma string vazia