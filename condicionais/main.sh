#!/bin/bash

# estruturas condicionais if/else podem ser utilizadas
# -ne (Não é igual ou diferente !=)
# -eq (é igual  =)
# -gt (maior que  >)
# -ge (maior e igual >=)
# -lt (menor que <)
# -le (menor e igual <=)

# Vou utilizar cada comparação
echo "Digite dois numeros:"
read num1; read num2


# estrtura condicional
if [ $num1 -gt $num2 ]; then         
    echo "O $num1 é maior que $num2."
elif [ $num1 -eq $num2 ]; then
    echo "Os números são iguais."
elif [ $num1 -lt $num2 ]; then
    echo "O $num1 é menor que $num2."
fi
