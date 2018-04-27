
Hyperledger Fabric 구축 (1wk)
=============

Goal
 - Hyperledger의 기본적인 컨셉 이해
 - Docker 및 Hyperledger 명령어를 학습하여 사용환경 구축 
 - 체인코딩 작성 학습

Contents
- Hyperledger overview
- Simple private blockchain (1orderer, 2peer, 2node)
- Basic chain code coding analysis


Blockchain overview
-------------
- Bitcoin
    - P2P Solution(No Banks!) w/ prevent double spending
    - Chaining of blocks of transactios
        - Merkle tree hash of transactions
    - PoW based consensus algorihtm
- Ethereum
    - Smart contract
        - ERC20-Token
        - Other smart contract
    - PoW -> PoS
- Private (Permissioned/Consortium?) blockchains
    - [Public vs Private blockchain](https://www.ibm.com/blogs/blockchain/2017/05/the-difference-between-public-and-private-blockchain/)
    - [Permissioned blockchain](https://www.coindesk.com/information/what-is-the-difference-between-open-and-permissioned-blockchains/)

Hyperledger overview
-------------
 - Apache opensource blockchain project
    - [Mainly Consist of Five projects](https://www.sdxcentral.com/articles/news/whats-the-difference-between-the-5-hyperledger-blockchain-projects/2017/09/) * 
        - [Simple Description at Wiki](https://wiki.hyperledger.org/) 
    - Most active & released above 1.0 is a Fabric

- Usecases
    - Survey/Poll
    - [Shipping](https://www.joc.com/maritime-news/container-lines/maersk-line-limited/blockchain-technology-stage-more-questions-answers_20180323.html)
    - [Official use cases](https://wiki.hyperledger.org/groups/requirements/use-case-inventory)*

- Following Official Document
    - [What is Hyperledger Fabric](http://hyperledger-fabric.readthedocs.io/en/v1.1.0-alpha/blockchain.html#what-is-hyperledger-fabric)
        - Community based dev
        - private & permissioned by MSP
        - Channel ensures B2B privacy
        - Ledger consist of world state + transaction log
        - Smart Contract by Chaincode
        - Consensus based on SOLO/Kafka/SBFT (PBFT)
            - [Model -> Consensus](http://hyperledger-fabric.readthedocs.io/en/v1.1.0-alpha/fabric_model.html#consensus)
    - [Architecture](http://hyperledger-fabric.readthedocs.io/en/v1.1.0-alpha/arch-deep-dive.html)
        - Composition
            - Peer / Organization
            - Orderer
            - MSP
            - CA
    - Transaction flow
        - [Architecture -> Transaction Flow](http://hyperledger-fabric.readthedocs.io/en/v1.1.0-alpha/txflow.html)
        - [Ledger -> Transaction Flow](http://hyperledger-fabric.readthedocs.io/en/v1.1.0-alpha/ledger.html#transaction-flow)
        
- ChainCode (vs EVM, Solidity)

- Resource
    - [Github](https://github.com/hyperledger/fabric)
    - [Docs v1.1](http://hyperledger-fabric.readthedocs.io/en/v1.1.0-alpha/)


Hyperledger Setup (Ubuntu 16.04)
-------------
1. Docker CE
    - https://docs.docker.com/install/linux/docker-ce/ubuntu/
    ```console
    sudo apt-get update
    sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
    sudo apt-get update
    sudo apt-get install docker-ce
    docker -v
    sudo usermod -aG docker $USER
    [logout and login]
    docker ls
    [shows empty without an error]
    ```
2. Docker Compose
    - https://docs.docker.com/compose/install/
    ```console
    sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    docker-compose --version
    ```
3. Golang
    - https://tecadmin.net/install-go-on-ubuntu/
    ```console
    sudo tar -xvf go1.10.1.linux-amd64.tar.gz
    sudo mv go /usr/local
    ```
4. NVM -> Node.js
    - https://www.liquidweb.com/kb/how-to-install-nvm-node-version-manager-for-node-js-on-ubuntu-12-04-lts/
    ```console
    sudo apt-get install build-essential libssl-dev
    curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash
    . ~/.bashrc
    nvm install 8.9.4
    ```
5. Fabric Samples
    - http://hyperledger-fabric.readthedocs.io/en/release-1.1/samples.html
    ```console
    curl -sSL https://goo.gl/6wtTN5 | bash -s 1.1.0
    cd fabric-samples
    git checkout 1252c7a0eee39cb7b0fe3162462607c632ea9ac0
    ```    

Hyperledger Sample (Build Your First Network)
-------------
- http://hyperledger-fabric.readthedocs.io/en/release-1.1/build_network.html
```console
cd first-network
./byfn.sh -m generate
./byfn.sh -m up
[check result]
./byfn.sh -m down
```

Docker overview
-------------

- Linux Container
- lib...
- vs Virtual Machine
- Setup
- Download & Use
- Upload & Use (optional)


AWS Setup
-------------
 - generate instance
 - open ports
 - login w/ pem or ppk key
