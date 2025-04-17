# Shell Scripting

Este tutorial introduz os conceitos fundamentais de shell scripting. Shell scripts são arquivos de texto contendo comandos que o shell executa sequencialmente, automatizando tarefas no sistema operacional.

## Índice

1. [Introdução ao Shell Scriptingg](#Introdução-ao-Shell-Scriptin)
2. [Criando Primeiro Script](#Criando-seu-primeiro-Script)
3. [Variáveis](#Variáveis)

## Introdução ao Shell Scripting

Shell scripting permite automatizar tarefas repetitivas, combinar comandos e criar utilitários personalizados para seu sistema.

## Criando seu Primeiro Script

### Vamos criar um script simples que exibe uma mensagem:

```bash
#!/bin/bash
# Meu primeiro script
echo "Olá, Mundo!"
```

> __Obs__: Não esqueça que de inserir _#!/bin/bash_ sempre deve ser inserido no começo dos scripts bash, para que seja identificado o interpretador.

> #! → é o shebang, um marcador especial que informa ao sistema operacional que o arquivo deve ser executado por um interpretador específico.

> /bin/bash → é o caminho absoluto do interpretador Bash, localizado na pasta /bin.

### Comentário

Para realizar um comentário em shell, podemos inserir o caractere especial **#**, e em seguida inserir o comentário desejado.

Exemplo:

```bash
#!/bin/bash

read input1 # Leitura da variável input1
```

### Como executar o código bash?

Podemos executar da seguinte forma:
- Salvamos o arquivo com o nome que você preferir: [nome].sh. Exemplo: meu_script.sh
- Devemos tornar o arquivo executável utilizando o comando **changemode** que na linha de comando utilizamos o *chmod*. Em seguida digitamos *+x* para atribuírmos ao arquivo a permissão de execução.

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
