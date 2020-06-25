# Como instalar nó da RBB (Rede Blockchain Brasil) TestNet

## Pré-requisitos

* **CPU**: 2 cores

* **RAM Memory**: 4 GB

* **Hard Disk**: 30 GB SSD

* **Sistema Operacional**: Ubuntu 16.04, Ubuntu 18.04, Centos7, sempre 64 bits

* **Ferramenta**: Docker

É necessário habilitar as portas de rede onde for instalado o nó:

* **4040**: TCP - Porta de comunicação para o Orion.

* **60606**: TCP/UDP - Porta para comunicação p2p entre nós.

* **4545**: TCP - Porta para comunicação RPC.

## Instalação de um nó 

>`git clone https://github.com/josenogueiradalmeida/rbb`

## Executando um nó Validador (Validator Node)

>`chmod +x runNode.sh`

>`./runNode.sh validator`

## Executando um nó Inicializador (Boot Node)

>`chmod +x runNode.sh`

>`./runNode.sh boot`


## Executando um nó Regular (Writer/Observer Node)

>`chmod +x runNode.sh`

>`./runNode.sh regular`


[Blockchain](https://www.github.com "DLT").

Exemplo de código:

```js
    // We will be using Solidity version 0.5.12 
    pragma solidity 0.5.12;

    contract MyContract {
        string private message = "My First Smart Contract";

        function getMessage() public view returns(string memory) {
            return message;
        }

        function setMessage(string memory newMessage) public {
            message = newMessage;
        }
    }
```

***Nota: Sem comentários.***

