#!/bin/bash

echo "Escolha uma operação:"
echo -e "1)Soma\n2)Subtração\n3)Multiplicação\n4)Divisão"
read escolha

case $escolha in
    1)
        echo "Operação escolhida: $escolha"
        echo "Digite o primeiro número:"
        read num1
        echo "Digite o segundo número:"
        read num2
        soma=$((num1 + num2))
        echo "Resultado: $num1 + $num2 = $soma"
        ;;
    2)
        echo "Operação escolhida: $escolha"
        echo "Digite o primeiro número:"
        read num1
        echo "Digite o segundo número:"
        read num2
        sub=$((num1 - num2))
        echo "Resultado: $num1 - $num2 = $sub"
        ;;
    3)
        echo "Operação escolhida: $escolha"
        echo "Digite o primeiro número:"
        read num1
        echo "Digite o segundo número:"
        read num2
        mult=$((num1 * num2))
        echo "Resultado: $num1 x $num2 = $mult"
        ;;
    4)
        echo "Operação escolhida: $escolha"
        echo "Digite o primeiro número:"
        read num1
        echo "Digite o segundo número:"
        read num2

        if [ "$num2" -eq 0 ]; then
            echo "Não é possível realizar divisão por zero"
            exit 1
        fi

        div=$((num1 / num2))
        echo "Resultado: $num1 / $num2 = $div"
        ;;

esac