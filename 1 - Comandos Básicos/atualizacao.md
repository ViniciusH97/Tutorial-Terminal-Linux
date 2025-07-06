## Atualização do sistema

Periódicamente precisamos atualizar o sistema para manter as listas e os pacotes atualizados. Utilizamos dois comandos. É recomendado executar um comando após o outro.

### sudo apt update

Atualização da lista de pacotes disponíveis nos repositórios, porém não instala nada:

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