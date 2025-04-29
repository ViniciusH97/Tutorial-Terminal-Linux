# Fundamentos de Script Bash

## Criando o Primeiro Script Bash

### Vamos criar um script simples que exibe uma mensagem:

```bash
#!/bin/bash
echo "Olá, Mundo!"
```

> Obs: Não esqueça que de inserir _#!/bin/bash_ sempre deve ser inserido no começo dos scripts bash, para que seja identificado o interpretador.

> #! → é o shebang, um marcador especial que informa ao sistema operacional que o arquivo deve ser executado por um interpretador específico.

> /bin/bash → é o caminho absoluto do interpretador Bash, localizado na pasta /bin.

### Comentário

Para realizar um comentário em shell, podemos inserir o carácter especial **#**, e em seguida inserir o comentário desejado.

Exemplo:

```bash
#!/bin/bash

# Meu primeiro script

echo "Olá, Mundo!" # Escreva Olá, Mundo!
```

Exemplo 2:

```bash
#!/bin/bash

read input1 # Leitura da variável input1
```

### Como executar o código bash?

Podemos executar da seguinte forma:
1. Salvamos o arquivo com o nome que você preferir: [nome].sh. Exemplo: meu_script.sh
2. Devemos tornar o arquivo executável utilizando o comando **changemode** que na linha de comando utilizamos como `chmod`. Em seguida digitamos *+x* para atribuírmos ao arquivo a permissão de execução.

Exemplo:

```bash
chmod +x meu_script.sh
```

E execute utilizando:

```bash
./meu_script.sh
```

Output:
```
Olá, Mundo!
```

## Variáveis

As variáveis podem ser criadas de duas formas, por atribuição no momento do input pela palavra reservada `read`, ou podemos criar atribuindo o valor a variável com um valor específico. Vamos ver os dois exemplos.

```bash
#!/bin/bash

read nome # atribuição do valor de entrada(input) nome, conforme o valor digitado pelo usuário.

echo "Seu nome é $nome."
```

### Declarar variáveis

Outra forma de utilizar as variáveis são atribuir valores de diferentes tipos, como strings, numéricos inteirose e caracteres. A declaração de variáveis não requer um tipo explícito, e também não deve haver espaços ao redor do símbolo especial de atribuição =.

Exemplo:

```bash
# Atribuição de uma string
name="John" # o interpretador reconhecerá como uma string literal
echo "$name" # Usamos o símbolo "$" para imprimir o valor da variável name
```

> Obs: Sempre utilize aspas ao redor de strings com espaços para evitar erros ao rodar o script bash.

Exemplo Incorreto
```bash
name_2=John wake # Erro pois o interpretador tentará executar o "wake" como comando
```

Exemplo Correto
```bash
name2="John wake"
echo "$name_2"
```

Exemplo de variável númerica
```bash
idade=20 # atribuição de um valor numérico inteiro
echo "Você tem $idade anos de idade." # Podemos imprimir o valor de uma variável utilzando o "$" e echo para escrever o texto.

# Saída: Você tem 20 anos de idade.

```

### Remover o valor da variável

Podemos remover o valor da variável utilizando o `unset`.

Por exemplo:

```bash
idade=18 # atribuição do valor 18 para a variável idade
unset idade # remove o valor da variável (18)

idade=20 # atribui o valor 20 à variável idade
echo "$idade" # Saída: 20
```

## Estruturas condicionais

No bash podemos utilizar estruturas condicionais com as palavras-chaves `if`, `else` e `elif`. Para realizar comparação numérica, utilizamos (`-gt`, `-lt`, `-ge`, `-le`, `-ne`, `-eq`). É importante usarmos espaços ao digitar `[]` ou `[[]]`, com espaçoes entre as variáveis e os operadores para respeitar a sintáxe do bash. Para fechar o `if` é necessário digitar `fi`, que indicará o término da condicional.

| Operador | Descrição | Equivalência |
| -------- | --------- | ------------ |
|   -eq    |   igual   |       =      |
|   -ne    | diferente |      !=      |
|   -gt    | maior que |       >      |
|   -ge    | maior ou igual |   >=    |
|   -lt    | menor que |       <      |
|   -le    | menor ou igual |   <=    |

### Estrutura condicional simples

```bash
if [ $num1 -gt $num2 ]; then         
    echo "O $num1 é maior que $num2."
elif [ $num1 -eq $num2 ]; then
    echo "Os números são iguais."
elif [ $num1 -lt $num2 ]; then
    echo "O $num1 é menor que $num2."
fi
```

### Estrutura condicional 

```bash
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
```

## Operadores lógicos

No Bash, além dos operadores de comparação, também usamos operadores lógicos(`&&` e `||`) para combinar múltiplas condições dentro de estruturas
como `if`, `while`, etc.

#### Por exemplo:

### Estrutura condicional com operador lógico

```bash
if [ $num1 -gt 10 ] && [ $num2 -gt 10 ]; then
    echo "Os números são maiores que 10."
elif [ $num1 -lt 10 ] || [ $num2 -lt 10 ]; then
    echo "Pelo menos um dos números é menor que 10."
else
    echo "Nenhum dos números é maior que 10."
fi
```
