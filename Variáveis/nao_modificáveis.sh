#!/bin/bash

# Tornando variáveis não modificáveis

readonly nome="Beltrano" # a variável nome não pode ser modificada
echo "nome: $nome!" 
read nome                # tentando modificar a variável nome
echo "Olá, $nome!"       # não será possível modificar a variável nome