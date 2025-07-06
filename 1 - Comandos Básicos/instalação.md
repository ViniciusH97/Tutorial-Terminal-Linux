## Instalação de pacotes

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
**Observação:**
>Nem todos os programas estarão no repositório da distribuição. Às vezes é preciso adicionar um repositório externo ou instalar um .deb manualmente.
>Sempre rode sudo apt update antes de instalar algo, pra garantir que você está instalando a versão mais atual.