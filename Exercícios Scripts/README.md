## Exercícios

### Exercício 1

Exercício: Calculadora Simples
Crie um script Bash que funcione como uma calculadora simples, permitindo ao usuário realizar operações básicas como soma, subtração, multiplicação e divisão.

**Requisitos:**

O script deve pedir ao usuário para escolher a operação (soma, subtração, multiplicação ou divisão).

O script deve pedir ao usuário para inserir dois números.

O script deve realizar a operação escolhida e exibir o resultado.

O script deve validar a entrada do usuário:

Verificar se o usuário escolheu uma operação válida.

Verificar se os números inseridos são válidos (ou seja, não devem ser strings ou outros caracteres não numéricos).

Para a operação de divisão, verifique se o divisor não é zero.

Exemplo de saída esperada:

Escolha uma operação:
1) Soma
2) Subtração
3) Multiplicação
4) Divisão


```bash
Operação escolhida: 1
Digite o primeiro número: 10
Digite o segundo número: 5
Resultado: 10 + 5 = 15
```

### Exercício 2

**Verificador de Palíndromos**

Crie um script que peça ao usuário para digitar uma palavra e verifique se ela é um palíndromo 
(ou seja, se pode ser lida da mesma forma de trás para frente).

Requisitos:
O usuário deve inserir uma palavra ou frase sem espaços.

O script deve converter tudo para minúsculas antes da verificação.

O script deve informar se a palavra é ou não um palíndromo.

**Exemplo de entrada e saída:**

input:

```bash
Digite uma palavra: radar
```
Output:
```bash
A palavra "radar" é um palíndromo!
```
Input:
```bash
Digite uma palavra: casa
```
Output:
```bash
A palavra "casa" NÃO é um palíndromo!
```