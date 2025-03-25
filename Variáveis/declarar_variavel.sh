#!/bin/bash

# Variáveis bash podem ser declaradas de duas formas:
# 1. nome=valor
# 2. nome="valor"

nome="Pedro"
echo "Olá, $nome!" # para acessar o valor de uma variável, basta colocar um cifrão ($) antes do nome da variável

# podemos utilizar numeros, letras e underline (_) para nomear variáveis
# não podemos começar o nome de uma variável com um número (ex: 1nome)
# não podemos utilizar caracteres especiais no nome de uma variável (ex: nome@)
# não podemos utilizar espaços em branco no nome de uma variável (ex: nome completo)

idade=20
echo "Você tem $idade anos."

# podemos declarar variáveis em uma linha só
nome="Ciclano" idade=30
echo "Olá, $nome! Você tem $idade anos."

