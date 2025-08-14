# 1. Fundamentos de Script Bash

- [1. Fundamentos de Script Bash](#1-fundamentos-de-script-bash)
  - [1.1. Criando o Primeiro Script Bash](#11-criando-o-primeiro-script-bash)
    - [1.1.1. Vamos criar um script simples que exibe uma mensagem:](#111-vamos-criar-um-script-simples-que-exibe-uma-mensagem)
    - [1.1.2. Comentário](#112-comentário)
    - [1.1.3. Como executar o código bash?](#113-como-executar-o-código-bash)
  - [1.2. Variáveis](#12-variáveis)
    - [1.2.1. Declarar variáveis](#121-declarar-variáveis)
    - [1.2.2. Remover o valor da variável](#122-remover-o-valor-da-variável)
  - [1.3. Estruturas condicionais](#13-estruturas-condicionais)
    - [1.3.1. Estrutura condicional simples](#131-estrutura-condicional-simples)
    - [1.3.2. Estrutura condicional](#132-estrutura-condicional)
  - [1.4. Operadores lógicos](#14-operadores-lógicos)
    - [1.4.1. Exemplo](#141-exemplo)
    - [1.4.2. Estrutura condicional com operador lógico](#142-estrutura-condicional-com-operador-lógico)
  - [1.5. Estruturas de repetição](#15-estruturas-de-repetição)
  - [1.6. Entrada de usuário](#16-entrada-de-usuário)
  - [1.7. Parâmetros de argumentos](#17-parâmetros-de-argumentos)
    - [Exemplo: Script com argumentos](#exemplo-script-com-argumentos)
  - [1.8. Funções](#18-funções)
  - [1.9. Arrays](#19-arrays)
    - [Declarando um array](#declarando-um-array)
  - [Outros comandos](#outros-comandos)

## 1.1. Criando o Primeiro Script Bash

### 1.1.1. Vamos criar um script simples que exibe uma mensagem:

Podemos utilizar o editor de texto `nano` nativo do shell, ou pode utilizar outro editor de texto de sua escolha, como o Visual Studio Code por exemplo, criamos um arquivo com a extensão `.sh`. Vamos criar da seguinte forma.

Com o editor de texto `nano`:
```bash
nano meu_script.sh
```
Em seguida pressione Enter. abrirá o editor de texto nano, assim, podemos escrever o primeiro script bash Hello, World!
```bash
#!/bin/bash
echo "Hello, World!"
```
Após editar pressione o atalho para salvar `CTRL + O`, neste momento você pode editar o nome do arquivo, caso queira salvar pressione `Enter` e pressione o atalho `CTRL + X` para fechar o editor de texto nano.

> Obs: Não esqueça que de inserir _#!/bin/bash_ sempre deve ser inserido no começo dos scripts bash, para que seja identificado o interpretador.

> #! → é o shebang, um marcador especial que informa ao sistema operacional que o arquivo deve ser executado por um interpretador específico.

> /bin/bash → é o caminho absoluto do interpretador Bash, localizado na pasta /bin.

Em outro editor de texto, basta criar o arquivo com a extensão `.sh`, incluir com o código acima e salvar. 

### 1.1.2. Comentário

Para realizar um comentário em shell, podemos inserir o carácter especial **#**, e em seguida inserir o comentário desejado.

Exemplo 1:

```bash
#!/bin/bash

echo "Hello, World!" # Escreva Hello, World!
```

Exemplo 2:

```bash
#!/bin/bash

read input1 # Leitura da variável input1
```

### 1.1.3. Como executar o código bash?

Podemos executar da seguinte forma:

Devemos tornar o arquivo executável utilizando o comando **changemode** que na linha de comando utilizamos como `chmod`. Em seguida digitamos *+x* para atribuírmos ao arquivo a permissão de execução.

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
Hello, World!
```

## 1.2. Variáveis

As variáveis podem ser criadas de duas formas, por atribuição no momento do input pela palavra reservada `read`, ou podemos criar atribuindo o valor a variável com um valor específico. Vamos ver os dois exemplos.

```bash
#!/bin/bash

read nome # atribuição do valor de entrada(input) nome, conforme o valor digitado pelo usuário.

echo "Seu nome é $nome."
```

### 1.2.1. Declarar variáveis

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

### 1.2.2. Remover o valor da variável

Podemos remover o valor da variável utilizando o `unset`.

Por exemplo:

```bash
idade=18 # atribuição do valor 18 para a variável idade
unset idade # remove o valor da variável (18)

idade=20 # atribui o valor 20 à variável idade
echo "$idade" # Saída: 20
```

## 1.3. Estruturas condicionais

No bash podemos utilizar estruturas condicionais com as palavras-chaves `if`, `else` e `elif`. Para realizar comparação numérica, utilizamos (`-gt`, `-lt`, `-ge`, `-le`, `-ne`, `-eq`). É importante usarmos espaços ao digitar `[]` ou `[[]]`, com espaçoes entre as variáveis e os operadores para respeitar a sintáxe do bash. Para fechar o `if` é necessário digitar `fi`, que indicará o término da condicional.

| Operador | Descrição | Equivalência |
| -------- | --------- | ------------ |
|   -eq    |   igual   |       =      |
|   -ne    | diferente |      !=      |
|   -gt    | maior que |       >      |
|   -ge    | maior ou igual |   >=    |
|   -lt    | menor que |       <      |
|   -le    | menor ou igual |   <=    |

### 1.3.1. Estrutura condicional simples

```bash
if [ $num1 -gt $num2 ]; then         
    echo "O $num1 é maior que $num2."
elif [ $num1 -eq $num2 ]; then
    echo "Os números são iguais."
elif [ $num1 -lt $num2 ]; then
    echo "O $num1 é menor que $num2."
fi
```

### 1.3.2. Estrutura condicional 

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

## 1.4. Operadores lógicos

No Bash, além dos operadores de comparação, também usamos operadores lógicos(`&&` e `||`) para combinar múltiplas condições dentro de estruturas
como `if`, `while`, etc.

### 1.4.1. Exemplo

### 1.4.2. Estrutura condicional com operador lógico

```bash
if [ $num1 -gt 10 ] && [ $num2 -gt 10 ]; then
    echo "Os números são maiores que 10."
elif [ $num1 -lt 10 ] || [ $num2 -lt 10 ]; then
    echo "Pelo menos um dos números é menor que 10."
else
    echo "Nenhum dos números é maior que 10."
fi
```

## 1.5. Estruturas de repetição

Estruturas de repetição são utilizadas para executar uma parte do código várias vezes, enquanto uma condição for verdadeira. Podemos desenvolver estruturas de repetição em bash utilizando `for`, `while` e `until`. A estrutura de repetição for é utilizada para iterar sobre uma lista de itens, enquanto a estrutura while executa uma parte do código enquanto uma condição for verdadeira. A estrutura until executa a parte do código enquanto uma condição for falsa.

Vamos seguir com os exemplos.

Exemplo `for`:

```bash
for i in {1..5} 
do
    echo "$i"
done
```

ou podemos utilizar o `seq`, para determinar quantas vezes o bloco de código irá rodar.

```bash
for i in $(seq 1 10)
do
    echo "$i"
done
```

Exemplo `while`

```bash
cont=1
while ( $cont -eq 10 ); do
    echo "$cont"
    ((cont++))
done
```

Exemplo `until`:

```bash
cont=1
until [ $cont -gt 10 ]; do
    echo "$cont"
    ((cont++))
done
```

## 1.6. Entrada de usuário

Podemos receber um valor com a entrada do usuário. Para realizarmos a leitura da entrada do usuário utilizamos o `read` para a leitura. O comando `-p` usamos para mostrar o texto e determinamos a variável que ira receber o valor após o texto, no exemplo abaixo é criado a variável `nome`.

Por exemplo:

```bash
#!/bin/bash
read -p "Digite seu nome: " nome
echo "Olá, $nome!"
```

Output:

```
Digite seu nome: Pedro
Olá, Pedro!
```

Se não quiser exibir a mensagem basta usar apenas o comando `read` sem a opção `-p`. Nesse caso, o usuário digita diretamente e o valor será armazenado na variável.

Por exemplo:

```bash
#!/bin/bash
read idade 
echo "Você tem $idade anos de idade."
```

Output:
```
20
Você tem 20 anos de idade.
```

## 1.7. Parâmetros de argumentos

No bash podemos passar argumentos para qualquer script diretamente na linha de comando. Esses argumentos podem ser acessados por meio de variáveis especiais, como `$1`, `$2`, `$3`, etc, onde o número representa a posição de cada argumento.

### Exemplo: Script com argumentos

```bash
#!/bin/bash

echo "O primeiro argumento é: $1"
echo "O segundo argumento é: $2"
```

Executar script:
```bash
./script.sh argumento1 argumento2
```

> Não esqueça de determinar a permissão de execução do arquivo .sh utilizando o comando chmod

Output:
```
O primeiro argumento é: argumento1
O segundo argumento é: argumento2
```

As variáveis especiais utilizadas em argumentos são:

| Variável especial | Descrição |
| ----------------- | --------- |
| $0                | Nome do script |
| $#                | Quantidade de argumentos passados |
| $@                | Lista todos os argumentos passados |
| $*                | Lista todos os argumentos como uma única string |
| "$@"              | Cada argumento como uma string separada |
| "$*"              | Todos os argumento  como uma única string |

Exemplo de utilização das variáveis de listagem de argumentos.

```bash
#!/bin/bash

echo "Quantidade de argumentos: $#"
echo "Todos os argumentos passados: $@"
```

Executando:
```bash
./script.sh teste1 teste2 teste3
```

Output:
```
Quantidade de argumentos: 3
Todos os argumentos passados: teste1 teste2 teste3
```

## 1.8. Funções

As funções em Bash nos permite organizar o código em blocos. Segue abaixo o seguinte exemplo de um função:

```bash
minha_funcao(){
    # código da função
}
```

Utilizando o argumento, na função menor de idade

```bash
#!/bin/bash
verificar_idade(){
    if [ "$1" -ge 18 ]; then
        echo "Você é maior de idade."
    elif [ "$1" -lt 18 ]; then
        echo "Você é menor de idade."
    else
        echo "Entrada inválida."
    fi
}
```

Executando o script:
```bash
./verificar_maior_idade.sh 12
```

Output:

```
Você é menor de idade.
```

## 1.9. Arrays

Arrays no Bash permitem armazenar múltiplos valores em uma única variável. Eles são úteis para manipular listas de dados de forma eficiente.

### Declarando um array

Para criar um array, usamos parênteses `()` e separamos os valores por espaços.

```bash
#!/bin/bash

array=("valor1" "valor2" "valor3")
```
Para acessarmos os valores da array utilizamos os índices, que começam com o número `0`.

```bash
echo "Primeiro valor: ${array[0]}"
echo "Segundo valor: ${array[1]}"
```

Para exibirmos todos os valores da array utilizamos a símbolo especial `@`.
```bash
echo "Todos os valores da array: ${array[@]}"
```
Adicionar elemento no array:
```bash
array+=("valor4")
```
Remover elemento do array:
```bash
unset array[2] # remove o terceiro elemento
```
Iterando sobre um array
```bash
for i in "${array[@]}"; do
    echo "$valor"
done
```

## Outros comandos

**sleep**

O comando `sleep` pausa a axecução no tempo especificado em segundos.

**Exemplo:**
```bash
sleep 3
```
**date**
O comando `date` exibe a data e a hora atual.
