# Como instalar nó da RBB (Rede Blockchain Brasil) TestNet

## Pré-requisitos

* **CPU**: 2 cores

* **RAM Memory**: 4 GB

* **Hard Disk**: 30 GB SSD

* **Sistema Operacional**: Ubuntu 16.04, Ubuntu 18.04, Centos7, sempre 64 bits

* **Ferramentas**: Docker e acesso ao comando `sudo`

É necessário habilitar as portas de rede onde for instalado o nó:

* **4040**: TCP - Porta de comunicação para o Orion.

* **60606**: TCP/UDP - Porta para comunicação p2p entre nós.

* **4545**: TCP - Porta para comunicação RPC.

## Instalação de um nó 

>`git clone https://github.com/josenogueiradalmeida/rbb`

## Executando um nó Validador (Validator Node)

Atenção: é necessário estar previamente configurado com sua chave no genesis file (ou adicionado posteriormente).

>`cd rbb`

>`chmod +x runNode.sh`

>`./runNode.sh validator`

## Executando um nó Inicializador (Boot Node)

>`cd rbb`

>`chmod +x runNode.sh`

>`./runNode.sh boot`


## Executando um nó Regular (Writer/Observer Node)

>`cd rbb`

>`chmod +x runNode.sh`

>`./runNode.sh regular`

Para execuções posteriores, basta executar o comando runNode <papel> como no exemplo abaixo:

>`./runNode.sh regular`

Caso deseje apagar os dados gerados e começar uma nova blockchain, executar:

>`./runNode.sh regular clear`

