# Shell Scripting

Este tutorial introduz os conceitos fundamentais de shell scripting. Shell scripts são arquivos de texto contendo comandos que o shell executa sequencialmente, automatizando tarefas no sistema operacional.

## Introdução ao Shell Scripting

Shell scripting permite automatizar tarefas repetitivas, combinar comandos e criar utilitários personalizados para seu sistema.

## Criando seu Primeiro Script

Vamos criar um script simples que exibe uma mensagem:

```bash
#!/bin/bash
# Meu primeiro script
echo "Olá, Mundo!"
```

## Como executar o código bash?

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
