#!/bin/bash

# estruturas de repetição em bash
# for, while e until
# Estruturas de repetição são utilizadas para executar um bloco de código várias vezes, enquanto uma condição for verdadeira.
# A estrutura de repetição for é utilizada para iterar sobre uma lista de itens, enquanto a estrutura while executa um bloco de código enquanto uma condição for verdadeira.
# A estrutura until executa um bloco de código enquanto uma condição for falsa.

# exemplo de for no bash

for i in {1..10}
do
    echo "Número: $i"
done

# ou pode-se utilizar o comando seq. O comando seq é utilizado para gerar uma sequência de números

for i in $(seq 1 10)
do
    echo "Número: $i"
done

# While em bash

cont=1
while [ $cont -le 10 ]; do
    echo "$cont"
    ((cont++))
done