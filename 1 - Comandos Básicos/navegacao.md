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
| egrep   | Busca padrões em arquivos usando expressões regulares, este comando equivale ao egrep -E, já que o mesmo está obsoleto. | egrep "palavra" log.txt | egrep "palavra" [caminho1] [caminho2] |
| awk '{print $[coluna]}' | Exibe a uma coluna específica de um arquivo | awk '{print $2}' log.txt | awk '/error/ {print $0}' log.txt |

## Comando de busca em diretórios

| Comando | Descrição | Exemplo 1 | Exemplo 2 |
| ------- | --------- | --------- | --------- |
| find    | Encontrar um arquivo em um diretório específico | find [caminho] --name "*.txt" | find [caminho] -type d -name "lib" |
| locate  | Buscar arquivos e diretórios | locate "dados.csv" | locate log (retorna todos os arquivos e diretórios com log no nome)
| history | Exibe o histórico de comandos | history | - |
| clear   | Limpa o terminal | clear | - |

> Obs: O comando `locate` é uma alternativa do comando `find`, pois ele é mais rápido ao realizar pesquisas. Isso ocorre porque o primeiro apenas verifica seu banco de dados Linux em vez de todo o sistema. Além disso, a sintaxe é relativamente mais fácil de escrever.

Às vezes, o comando `locate` padrão pode retornar arquivos que foram excluídos, se o banco de dados não foi atualizado. A melhor solução é atualizar manualmente o banco de dados executando o seguinte:

```bash
sudo updatedb
```