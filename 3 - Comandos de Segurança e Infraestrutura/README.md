# Guia de Segurança da Informação

Este documento serve como um guia introdutório aos conceitos fundamentais de Segurança da Informação, abordando desde seus pilares teóricos até ferramentas práticas utilizadas por profissionais da área.

## Índice

- [Segurança da Informação](#segurança-da-informação)
  - [Os Pilares da Segurança](#os-pilares-da-segurança)
  - [Tipos de Ataques Comuns](#tipos-de-ataques-comuns)
  - [Principais Tipos de Malware](#principais-tipos-de-malware)
- [Boas Práticas de Segurança](#boas-práticas-de-segurança)
- [Ferramentas de Linha de Comando (CLI)](#ferramentas-de-linha-de-comando-cli)
  - [Ferramentas de Segurança Ofensiva (Red Team)](#ferramentas-de-segurança-ofensiva-red-team)
  - [Ferramentas de Segurança Defensiva (Blue Team)](#ferramentas-de-segurança-defensiva-blue-team)
  - [Nota sobre o Uso Ético](#nota-sobre-o-uso-ético)

---

# Segurança da Informação 

A **Segurança da Informação (InfoSec)** consiste no conjunto de práticas, políticas e ferramentas para proteger dados e sistemas contra acesso, uso, divulgação, alteração, interrupção ou destruição não autorizados.

## Os Pilares da Segurança

Seus pilares fundamentais garantem a robustez de um sistema seguro.

* **Confidencialidade:** Garante que a informação seja acessível apenas por pessoas autorizadas.
    * **Técnicas:** Criptografia, controle de acesso (ACLs) e autenticação forte.

* **Integridade:** Assegura que a informação permaneça completa, precisa e não sofra modificações não autorizadas.
    * **Mecanismos:** Hashes (SHA-256), somas de verificação (checksums) e assinaturas digitais.

* **Disponibilidade:** Garante que os dados e serviços estejam acessíveis para usuários autorizados sempre que necessário.
    * **Estratégias:** Redundância de sistemas (RAID, clusters), backups regulares e Planos de Recuperação de Desastres (PRD).

* **Autenticidade:** Confirma que a identidade de um usuário, sistema ou transação é genuína.
    * **Métodos:** Senhas, certificados digitais, biometria e autenticação multifator (MFA).

* **Não Repúdio (Irretratabilidade):** Garante que uma parte não possa negar a autoria de uma ação ou transação que realizou.
    * **Tecnologia:** Assinaturas digitais baseadas em criptografia de chave pública.

## Tipos de Ataques Comuns

* **Engenharia Social:** Manipulação psicológica para enganar indivíduos e induzi-los a divulgar informações confidenciais ou realizar ações que comprometam a segurança.
    * **Exemplo:** O avanço de tecnologias como *deepfake* tornou esses ataques ainda mais sofisticados e difíceis de detectar.

* **Phishing/vishing/smishing:** Principal vetor da engenharia social, utiliza e-mails, SMS ou até ligações para enganaras vítimas, coletar informações confidenciais.
    * **Variações:** *Spear Phishing* (direcionado a um indivíduo específico) e *Whaling* (direcionado a executivos de alto escalão).

* **Ataques de Negação de Serviço (DoS/DDoS):** Sobrecarregam um servidor, serviço ou rede com tráfego ilegítimo, tornando-o indisponível para usuários.
    * **Diferença:** Um ataque **DoS** (Denial of Service) parte de uma única fonte, enquanto um **DDoS** (Distributed Denial of Service) utiliza uma rede de máquinas comprometidas (*botnet*) para atacar a partir de múltiplas fontes.

* **Man-in-the-Middle (MitM):** O atacante se posiciona secretamente entre duas partes que estão se comunicando, interceptando, lendo e, possivelmente, alterando a comunicação. Comum em redes Wi-Fi públicas não seguras.

* **Ataque de Força Bruta (Brute Force):** Tentativa sistemática de adivinhar uma credencial (como uma senha ou chave criptográfica) testando todas as combinações possíveis até encontrar a correta.

* **Injeção de SQL (SQL Injection):** Inserção de código SQL malicioso em campos de entrada de uma aplicação web para manipular o banco de dados subjacente, permitindo o acesso, a modificação ou a exclusão de dados.

* **Cross-Site Scripting (XSS):** Injeção de scripts maliciosos (geralmente JavaScript) em páginas web visualizadas por outros usuários. Pode ser usado para roubar cookies de sessão, sequestrar contas ou redirecionar para sites maliciosos.

* **Exploração de Vulnerabilidade Zero-Day:** Ataque que explora uma falha de segurança em um software que ainda não é conhecida pelo desenvolvedor ou pelo público, significando que não existe uma correção (patch) disponível.

## Principais Tipos de Malware

**Malware** (Software Malicioso) é um termo abrangente para qualquer software projetado para causar danos ou explorar sistemas.

* **Vírus:** Anexa-se a um programa legítimo e precisa da ação do usuário (ex: executar o programa) para se espalhar.

* **Worm:** Semelhante a um vírus, mas se autorreplica e se espalha por redes sem a necessidade de intervenção humana, explorando vulnerabilidades.

* **Trojan (Cavalo de Troia):** Disfarça-se de software legítimo para enganar o usuário e abrir uma porta dos fundos (*backdoor*) no sistema, permitindo o acesso remoto do atacante.

* **Ransomware:** Criptografa os arquivos da vítima e exige o pagamento de um resgate (geralmente em criptomoeda) para fornecer a chave de descriptografia.

* **Spyware:** Coleta secretamente informações sobre as atividades do usuário (senhas, dados bancários, hábitos de navegação) e as envia para um terceiro.

* **Adware:** Exibe anúncios indesejados e pop-ups. Embora muitas vezes seja apenas irritante, pode coletar dados de navegação e comprometer a privacidade.

* **Rootkit:** Conjunto de ferramentas de software que permite a um ator mal-intencionado obter controle de nível de administrador ("root") sobre um sistema, permanecendo oculto.

---

# Boas Práticas de Segurança

Entender as ameaças é o primeiro passo para se construir uma boa defesa.

* **Senhas Fortes e Únicas:** Use senhas longas, complexas e diferentes para cada serviço. Considere o uso de um gerenciador de senhas.
* **Autenticação Multifator (MFA):** Ative a verificação em duas ou mais etapas sempre que possível. É uma das camadas de segurança mais eficazes contra roubo de contas.
* **Mantenha o Software Atualizado:** Aplique atualizações de segurança para sistemas operacionais, navegadores e outros softwares assim que estiverem disponíveis.
* **Cuidado com Phishing:** Verifique sempre o remetente de e-mails, desconfie de links e anexos suspeitos e nunca forneça informações confidenciais em resposta a uma solicitação inesperada.
* **Backups Regulares:** Mantenha cópias de segurança de seus dados importantes em um local seguro e isolado (offline ou em nuvem).
* **Use Conexões Seguras:** Evite redes Wi-Fi públicas para transações sensíveis. Se precisar, use uma VPN (Virtual Private Network) para criptografar seu tráfego.

---

# Ferramentas de Linha de Comando (CLI)

Profissionais de segurança utilizam diversas ferramentas para analisar, defender e testar a segurança de sistemas. Elas podem ser divididas em duas categorias principais:

### Ferramentas de Segurança Ofensiva (Red Team)

Usadas para simular ataques, encontrar vulnerabilidades e testar as defesas de um sistema.

* `nmap`: Ferramenta poderosa para descoberta de redes e auditoria de segurança. Escaneia portas, identifica serviços e sistemas operacionais.
* `Metasploit Framework`: Uma plataforma de pentest que contém uma vasta coleção de exploits para testar vulnerabilidades conhecidas.
* `Wireshark`: Analisador de protocolos de rede que permite capturar e inspecionar o tráfego de uma rede em tempo real.
* `John the Ripper`: Um popular cracker de senhas que pode ser usado para auditar a força das senhas de um sistema.
* `Burp Suite`: Plataforma integrada para realizar testes de segurança em aplicações web.

### Ferramentas de Segurança Defensiva (Blue Team)

Usadas para monitorar sistemas, detectar intrusões e responder a incidentes de segurança.

* `Snort`: Um Sistema de Detecção de Intrusão de Rede (NIDS) de código aberto que analisa o tráfego em tempo real em busca de assinaturas de ataques.
* `OSSEC`: Um Sistema de Detecção de Intrusão Baseado em Host (HIDS) que monitora logs, integridade de arquivos e atividades suspeitas no próprio sistema.
* `ClamAV`: Um motor de antivírus de código aberto projetado para detectar trojans, vírus e outros malwares.
* `Fail2Ban`: Escaneia arquivos de log e bane IPs que mostram comportamento malicioso, como múltiplas tentativas de login fracassadas.

### Nota sobre o Uso Ético

As ferramentas listadas, especialmente as ofensivas, devem ser utilizadas **apenas em ambientes controlados e com autorização explícita**. O uso indevido dessas ferramentas para atacar sistemas sem permissão é ilegal e antiético.
