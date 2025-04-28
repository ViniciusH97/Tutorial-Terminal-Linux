#!/bin/bash

# estruturas de repetição em bash
# for, while, until

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