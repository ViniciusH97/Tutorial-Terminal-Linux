# Comandos básicos em Bash🐧

- [Comandos básicos em Bash🐧](#comandos-básicos-em-bash)
  - [Comandos essenciais](#comandos-essenciais)
  - [Atualização do sistema](#atualização-do-sistema)
    - [sudo apt update](#sudo-apt-update)
    - [sudo apt upgrade](#sudo-apt-upgrade)
    - [Instalação full](#instalação-full)
    - [sudo apt-get](#sudo-apt-get)
  - [Buscar pacotes](#buscar-pacotes)
  - [Instalação de pacotes](#instalação-de-pacotes)
    - [Pacotes .deb](#pacotes-deb)
    - [Pacotes do repositório](#pacotes-do-repositório)
    - [Removendo pacotes do repositório](#removendo-pacotes-do-repositório)
  - [Navegação do Sistema](#navegação-do-sistema)
  - [Comandos para Manipulação de arquivos e pastas](#comandos-para-manipulação-de-arquivos-e-pastas)
  - [Comandos para visualização do conteúdo de arquivos](#comandos-para-visualização-do-conteúdo-de-arquivos)
  - [Comandos para busca em arquivos](#comandos-para-busca-em-arquivos)
  - [Comando de busca em diretórios](#comando-de-busca-em-diretórios)
  - [Permissões](#permissões)

O terminal Bash é uma interface de linha de comando (CLI) onde podemos executar comandos para controlar o sistema operacional. Ele é um dos shells mais populares e é comumente utilizado em distribuições Linux.

Clique abaixo para acessar a documentação oficial do GNU Bash:
[Manual GNU Bash](https://www.gnu.org/software/bash/manual/bash.html)

Para começar vamos abrir o terminal. Podemos abrir de duas formas:
1. Acessamos o terminal pelo ícone no desktop.
2. Acessamos o terminal pressionando as teclas de atalho _Ctrl + Alt + T_.

![image](https://github.com/user-attachments/assets/0c0cff03-615b-4a94-bbc8-9806799e057d)

## Comandos essenciais

Para você que está começando a utilizar o terminal, é essencial aprender os comandos básicos do GNU Bash, como comandos de navegação, gerenciar arquivos, ver informações do sistema e até automatização de tarefas. Abaixo poderá ver o comando e seu exemplos de uso.

## Atualização do sistema

Periódicamente precisamos atualizar o sistema para manter as listas e os pacotes atualizados. Utilizamos dois comandos. É recomendado executar um comando após o outro.

### sudo apt update

Atualização da lista de pacotes diponíveis nos repositórios, porém não instala nada:

```bash
sudo apt update
```
### sudo apt upgrade

Após a atualização da lista dos repositórios, ao executar esse comando irá baixar e instalar as versões mais recentes que já estão instalados no sistema.

```bash
sudo apt upgrade
```

### Instalação full

Para baixar e instalar os pacotes com versão atualizada podemos utilizar o seguinte comando:

```bash
sudo apt full-upgrade
```

### sudo apt-get

Podemos utilizar também o `apt-get` para realizar atualização. O comando é mais antigo, porém é muito utilizado em scripts. Segue abaixo os comandos que podemos utilizar o `apt-get`.

```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git # instala o pacote git
sudo apt-get dist-upgrade # semelhante ao apt full-upgrade
```

## Buscar pacotes

Para buscarmos um pacote que está instalado no sistema podemos utilizar os seguintes comandos.

**Exemplo**

```bash
# utilizando apt
apt search nano # busca pacotes relacionados
apt show nano # mostra informações do pacote

# utilizando apt-cache
apt-cache search nano 
apt-cache show nano
```

## Instalação de pacotes

As instalações de pacotes dos aplicativos provavelmente ao baixar, veem em fom

### Pacotes .deb

Se você já baixou algum sofware utilizando o Linux, deve ter se deparado com o arquivo em formato `.deb`, esse é um formato de pacotes de instalação usados por distribuições baseadas em Debian, como: Ubuntu, Kali Linux, Linux Mint, Parrot OS etc. Esse pacote já contém todas as bibliotecas e dependências para executar o programa corretamente.

**Como instalar pacotes .deb?**

Podemos instalar de duas formas, segue abaixo o primeiro exemplo utilizando o comando `dpkg`:

```bash
sudo dpkg -i arquivo.deb
```
A segunda forma seria a utilização do comando `apt`:
```bash
sudo apt install arquivo.deb
```
### Pacotes do repositório
Pacotes do repositório são programas que já estão disponíveis nos repositórios oficiais da distribuição do seu sistema, ou seja, são seguros para ser instalados diretamente com o uso do CLI (Comman Line Interface). Esses programas são atualizados automaticamente ao rodar o comando `sudo apt update && sudo apt upgrade`.

**Como instalar pacotes do repositório?**
Você pode utilizar o `apt` ou o `apt-get`. O mais comum é o `apt`.

Exemplo:

```bash
sudo apt update # atualização da lista de pacotes
sudo apt install nome_do_pacote
```
### Removendo pacotes do repositório
Para remover pacotes utilizamos o comando `remove` por exemplo:
```bash
sudo apt remove nome_do_pacote
```
Caso queira remover o arquivos de configuração do pacote utilize o comando `purge`:
```bash
sudo apt purge nome_do_pacote
```
Após a remoção, é recomendado remover as dependências que não são mais utilizadas, então executamos o comando:
```bash
sudo apt autoremove
```
**Observação: ** 
>Nem todos os programas estarão no repositório da distribuição. Às vezes é preciso adicionar um repositório externo ou instalar um .deb manualmente.
>Sempre rode sudo apt update antes de instalar algo, pra garantir que você está instalando a versão mais atual.
## Navegação do Sistema 

| Comando      | Descrição |
| ----------- | ----------- |
| pwd | Exibe o caminho completo do diretório atual  | 
| ls  | Exibe no terminal os arquivos e pastas do diretório atual |
| cd | Navega entre os diretórios, exemplo: `cd pasta `; `cd ..` (retorna um nível do caminho atual); `cd ~` (Navega para o diretório Home) |

Exemplo Prático:

`pwd`

![image](https://github.com/user-attachments/assets/dda20a3b-c73a-49a3-b3e4-e2a9faa350c4)

`ls`

![image](https://github.com/user-attachments/assets/3eaecee7-a408-4132-a931-ad48ea60e2ab)

`cd`

![image](https://github.com/user-attachments/assets/51212e2d-8e1e-43ad-86b9-cb5a661e5a78)

## Comandos para Manipulação de arquivos e pastas

Estes comandos 

| Comando | Descrição | Exemplo |
|--------|-----------|---------|
| mkdir | Cria uma nova pasta/diretório | `mkdir fotos` |
| touch | Cria um novo arquivo vazio | `touch nota.txt` |
| cp | Copia arquivo ou diretório (`-r` para diretórios) | `cp nota.txt /home/user/Desktop` |
| rm | Remove arquivo (use `-r` para remover diretórios) | `rm nota.txt` |
| rmdir | Remove diretório vazio | `rmdir fotos` |
| mv | Move ou renomeia arquivos/diretórios | `mv nota.txt /home/user/Documents/` |

> Obs: É recomendado testar esses comandos em algum sistema operacional Linux. Você pode criar e excluir pastas, criar arquivos vazios, navegar pelos diretórios etc. A medida que vai utilizando os comandos, fica mais fácil manipular o sistema.

## Comandos para visualização do conteúdo de arquivos

| Comando | Descrição | Exemplo |
| --------| --------- | ------- |
| cat     | Exibe o conteúdo do arquivo diretamente no terminal | `cat nota.txt` |
| less    | Exibe o conteúdo do arquivo de forma paginada, caso o arquivo for grande | `less nota.txt` |
| head    | Exibe somente as 10 primeiras linhas do arquivo | `head nota.txt` |
| tail    | Exibe somente as 10 últimas linhas do arquivo | `tail nota.txt` |
| tail -f | Exibe o conteudo, e atualiza em tempo real | `tail -f auth.log` |

## Comandos para busca em arquivos

Com esses comandos, você poderá realizar buscas de arquivos, diretórios e padrões de forma prática diretamente no terminal (shell).

| Comando | Descrição | Exemplo 1 | Exemplo 2 |
| ------- | -------- | --------- | --------- |
| grep    | Faz uma busca de um padrão específico em arquivos | grep "date" [caminho do arquivo] | grep "usuário" *.txt |
| egrep   | Busca padrões em arquivos usando expressões regulares, este comando equivale ao egrep -E, já que o mesmo está absoleto. | egrep "palavra" log.txt | egrep "palavra" [caminho1] [caminho2] |
| awk '{print $[coluna]}' | Exibe a uma coluna específica de um arquivo | awk '{print $2}' log.txt | awk '/error/ {print $0}' log.txt |

## Comando de busca em diretórios

| Comando | Descrição | Exemplo 1 | Exemplo 2 |
| ------- | --------- | --------- | --------- |
| find    | Encontrar um arquivo em um diretório específico | find [caminho] --name "*.txt" | find [caminho] -type d -name "lib" |
| locate  | Buscar arquivos e diretórios | locate "dados.csv" | locate log (retorna todos os arquivos e diretórios com log no nome)
| history | Exibe o histórico de comandos | history | - |
| clear   | Limpa o terminal | clear | - |
| locate  | Buscar arquivos e diretórios | locate dados.csv | locate log (retorna todos os arquivos e diretórios com log no nome)

> Obs: O comando `locate` é uma alternativa do comando `find`, pois ele é mais rápido ao realizar pesquisas. Isso ocorre porque o primeiro apenas verifica seu banco de dados Linux em vez de todo o sistema. Além disso, a sintaxe é relativamente mais fácil de escrever.

Às vezes, o comando `locate` padrão pode retornar arquivos que foram excluídos, se o banco de dados não foi atualizado. A melhor solução é atualizar manualmente o banco de dados executando o seguinte:

```bash
sudo updatedb
```

## Permissões

Os comandos a seguir são comandos que envolve permissões de execução, escrita e leitura no sistema, com base nos grupos e usuários do sistema

Comando `chmod`:

Exemplos:

