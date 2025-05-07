- [Segurança da informação 🛡️](#segurança-da-informação-️)
  - [Tipos de ataques mais comuns](#tipos-de-ataques-mais-comuns)
  - [Principais categorias de vírus e suas motivações:](#principais-categorias-de-vírus-e-suas-motivações)
- [Ferramentas CLI](#ferramentas-cli)
  - [Ferramentas de Segurança Defensiva](#ferramentas-de-segurança-defensiva)

# Segurança da informação 🛡️

A segurança da informação consiste em proteger dados e sistemas contra acessos não autorizados, alterações indevidas ou interrupções. Seus quatro pilares fundamentais são:

**Confidencialidade**  

Garante que apenas pessoas ou sistemas autorizados tenham acesso à informação. Técnicas comuns incluem criptografia, controle de acesso e autorização.
   
**Integridade**  

Assegura que a informação permaneça completa e não sofra modificações não autorizadas. Mecanismos como somas de verificação (checksums) e assinaturas digitais ajudam a detectar e prevenir alterações indevidas.

**Disponibilidade**  

Mantém os dados e serviços acessíveis sempre que necessários. Estratégias de redundância, backups e planos de recuperação de desastres são essenciais para minimizar o tempo de inatividade.

 **Autenticidade**  

Confirma se as informações e as transações são legítimas e provém de fontes confiáveis. Muitas vezes requer certificados digitais, autenticação de dois fatores (2FA) e protocolos de handshake que garantem aosremetentes e destinatários sejam quem dizem ser.

## Tipos de ataques mais comuns

__*Phishing*__:

Envio de mensagens fraudulentas para capturar credenciais (podem fazer uso da engenharia social).

_**Malware**_:

Softwares maliciosos que danificam ou espionam sistemas (vírus, worms, trojans).  

**Ataques DoS/DDoS**:

Sobrecarga de servidores para torná-los indisponíveis, gerando prejuízo. 

_**Man-in-the-Middle**_ (MitM): 

Interceptação e possível alteração de comunicações.

_**Brute Force**_ (Ataque de força bruta):

Tentativa repentina de senha ou chave criptográfica.

**Engenharia Social**: 

Esse ataque consiste em enganar a vítima para conseguir informações confidenciais, e a partir disso realizar o acesso não autorizado a um sistema. Com o crescente avanço da IA, esse tipo de ateque estão sendo mais sofisticados, exemplo disso, é o uso do deepfake para enganar.

**Exploração de vulnerabilidades _Zero Day_:**

Exploração de vulnerabilidades de software que ainda não foram descobertas e corrigidas.

_**SQL Injection**:_

Consiste na injeção de um script malicioso em uma aplicação para conseguir informações do sistema.

## Principais categorias de vírus e suas motivações:

_**Trojans**_: 
Disfarçados de software; motivação financeira ou espionagem.  

_**Worms**_: 
Autorreplicantes; muitas vezes usados para sobrecarregar redes.  

_**Ransomware**_: 
Criptografa dados e exige resgate; motivação financeira.  

_**Spyware**_: 
Coleta informações sem o consentimento do usuário; espionagem corporativa ou governamental.  

Entender esses conceitos é o primeiro passo para implementar boas práticas e ferramentas que protejam sistemas e garantam a segurança de dados.

# Ferramentas CLI

Existem ferramentas prontas que podem ser utilizadas paa escanear redes, portas, realizar testes de força bruta(brute force) ou até pesquisas avançadas. Podemos dividir essas ferramentas em dois tipos: Ferramentas de segurança ofensiva e Ferramentas de segurança defensiva.

Nesse documento você verá quais são as ferramentas mais utilizadas e como podemos utilizar cada uma delas usar suas funcionalidades.

As ferramentas mencionadas não podem estar disponíveis no repositório do sistema, então deve ser realizada a instalação utilizando o comando `sudo apt install`

---

## Ferramentas de Segurança Defensiva
