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


# Estrutura condicional simples
if [ $num1 -gt $num2 ]; then         
    echo "O $num1 é maior que $num2."
elif [ $num1 -eq $num2 ]; then
    echo "Os números são iguais."
elif [ $num1 -lt $num2 ]; then
    echo "O $num1 é menor que $num2."
fi

# Estrutura condicional aninhada

if [ $num1 -gt $num2 ]; then
    echo "O $num1 é maior que $num2."
    if [ $num1 -gt 10 ]; then
        echo "O $num1 é maior que 10."
    fi
elif [ $num1 -eq $num2 ]; then
    echo "Os números são iguais."
else
    echo "O $num1 é menor que $num2."
fi

# Estrutura condicional com operador lógico

if [ $num1 -gt 10 ] && [ $num2 -gt 10 ]; then
    echo "Os números são maiores que 10."
elif [ $num1 -lt 10 ] || [ $num2 -lt 10 ]; then
    echo "Pelo menos um dos números é menor que 10."
else
    echo "Nenhum dos números é maior que 10."
fi