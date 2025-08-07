## Permissões

Os comandos a seguir são comandos que envolve permissões de execução, escrita e leitura no sistema, com base nos grupos e usuários do sistema.

Para tornar fácil o entendimento de permissões de arquivos, navegue para um diretório com vários arquivos e pastas e execute o comando:

```bash
ls -la
```
Este comando exibirá as permissões de leitura, escrita e execução de cada arquivo, e os grupos definidos por categoria. São eles:
- Usuário (u) criador/dono do arquivo
- Grupo (g) grupo do dono
- Outros (o) os demais usuários

![image](https://github.com/user-attachments/assets/7698ae95-1797-4324-9598-8d6a1e62af22)

**Exemplo:**
| - | rwx | rwx | r-x |
|---|-----|-----|-----|
| Tipo |  u  |  g  |  o  |

- `-` = Arquivo
- `d` = diretório

As permissões:

- `r` = leitura  valor -> 4
- `w` = erscrita valor -> 2
- `x` = execução valor -> 1

Ou seja:

| Permissão | Valor | Descrição |
| --------- | ----- | --------- |
| r         |  4    |  leitura  |     
| w         | 2     |  escrita  |
| x         | 1     |  execução |
| -         | 0     |  sem permissão |

Para atribuirmos as permissões de execução a um arquivo com o comando `chmod`, somando os valores das permissões:

`rwx` = 4 + 2 + 1 = 7

`rw-` = 4 + 2 = 6

`r--` = 4 = 4

Exemplos de definição de permissão ao dono, ao grupo e aos outros usuários:

```bash
chmod 745 arquivo.txt
```
- 7 -> (rwx) leitura, escrita e execução ao dono
- 5 -> (r-x) apenas leitura e execução ao grupo
- 4 -> (r--) apenas leitura aos outros usuários

Dar permissão total ao dono, leitura ao grupo e leitura aos outros:

```bash
chmod 744 script.sh
```

Remover permissão de escrita para o grupo:

```bash
chmod g-w script.sh
```

Remover permissão de escrita e execução do grupo e do outros usuários: 
```bash
chmod go-wx script.sh
```
