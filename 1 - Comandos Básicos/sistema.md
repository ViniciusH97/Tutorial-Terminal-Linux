# Guia de Comandos para Gerenciamento de Processos no Linux

Este guia apresenta os comandos mais comuns para visualizar e gerenciar processos diretamente pelo terminal no Linux.

## Visualização de Processos

Comandos utilizados para listar e inspecionar os processos em execução no sistema.

### `ps`
Exibe um "snapshot" (uma foto do momento) dos processos atuais. É altamente configurável através de suas flags.

**Exemplo de uso comum:**
```bash
# Lista todos os processos em execução com detalhes (usuário, CPU%, memória%)
ps aux
```

### `top`
Oferece uma visão dinâmica e em tempo real dos processos do sistema. É um painel interativo que mostra o consumo de CPU, memória e outras estatísticas vitais.

**Como usar:**
```bash
# Apenas execute o comando
top
```
*Pressione `q` para sair.*

### `htop`
Uma versão aprimorada e mais amigável do `top`. Oferece uma interface colorida, rolagem e gerenciamento de processos de forma mais intuitiva.

**Como usar:**
```bash
# Geralmente precisa ser instalado primeiro (ex: sudo apt install htop)
htop
```

### `jobs`
Lista os processos que estão em execução ou parados na sessão atual do terminal (jobs). É útil para gerenciar tarefas que você colocou em segundo plano (`&`).

**Exemplo:**
```bash
# Inicia um processo em segundo plano
sleep 100 &

# Lista os jobs da sessão atual
jobs
```

## Manipulação de Processos

Comandos para enviar sinais aos processos, geralmente para encerrá-los ou alterar sua prioridade.

### `kill`
Envia um sinal para um processo, geralmente para terminá-lo. Requer o ID do Processo (PID).

**Exemplos:**
```bash
# Envia o sinal padrão (SIGTERM, 15), pedindo para o processo encerrar educadamente
kill 1234

# Envia o sinal SIGKILL (9), forçando o encerramento imediato do processo (use com cuidado)
kill -9 1234
```

### `nice` e `renice`
Ajustam a prioridade de execução de um processo. Valores "nice" mais altos (até 19) significam menor prioridade.

**Exemplos:**
```bash
# Inicia um comando com prioridade reduzida
nice -n 10 comando_pesado

# Altera a prioridade de um processo já em execução
renice -n 5 -p 1234
```

## Gerenciamento de Serviços (Daemons)

Comandos para gerenciar serviços ou daemons que rodam em segundo plano de forma persistente.

### `systemctl`
A principal ferramenta para controlar o `systemd`, o gerenciador de sistema e serviços na maioria das distribuições Linux modernas.

**Exemplos:**
```bash
# Verifica o status de um serviço (ex: servidor web Nginx)
systemctl status nginx

# Inicia um serviço
systemctl start nginx

# Para um serviço
systemctl stop nginx

# Reinicia um serviço
systemctl restart nginx

# Habilita o serviço para iniciar junto com o sistema
systemctl enable nginx
```
