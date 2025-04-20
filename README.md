# Shell Scripting 🐧

Este tutorial introduz os conceitos fundamentais de shell scripting. Shell scripts são arquivos de texto contendo comandos que o shell executa sequencialmente, automatizando tarefas no sistema operacional.

## Índice 📑

1. [Introdução ao Shell Scripting](#Introdução-ao-Shell-Scriptin)
2. [Criando Primeiro Script](#Criando-seu-primeiro-Script)
3. [Variáveis](#Variáveis)

## Introdução ao Shell Scripting 

Shell scripting permite automatizar tarefas repetitivas, combinar comandos e criar utilitários personalizados para seu sistema.

## Criando seu Primeiro Script

### Vamos criar um script simples que exibe uma mensagem:

```bash
#!/bin/bash
echo "Olá, Mundo!"
```

> __Obs__: Não esqueça que de inserir _#!/bin/bash_ sempre deve ser inserido no começo dos scripts bash, para que seja identificado o interpretador.

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
2. Devemos tornar o arquivo executável utilizando o comando **changemode** que na linha de comando utilizamos o *chmod*. Em seguida digitamos *+x* para atribuírmos ao arquivo a permissão de execução.

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

As variáveis podem ser criadas de duas formas, por atribuição no momento do input pela palavra reservada __read__, ou podemos criar atribuindo o valor a variável com um valor específico. Vamos ver os dois exemplos.

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

Podemos remover o valor da variável utilizando o "*unset*".

Por exemplo:

```bash
idade=18
unset
