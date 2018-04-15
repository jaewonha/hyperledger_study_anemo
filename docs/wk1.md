
Hyperledger chaincode 구축해보기 (1wk)
=============

Goal
 - Hyperledger의 기본적인 컨셉 이해
 - Docker 및 Hyperledger 명령어를 학습하여 사용환경 구축 
 - 체인코딩 작성 학습

Contents
- Hyperledger overview
- Simple private blockchain (1orderer, 2peer, 2node)
- Basic chain code coding 
- Docker overview
- AWS Setup


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


Simple private blockchain
-------------
- setup : http://hyperledger-fabric.readthedocs.io/en/release-1.1/getting_started.html
- network (1orderer, 2peer, 2node) : http://hyperledger-fabric.readthedocs.io/en/release-1.1/build_network.html
- app: http://hyperledger-fabric.readthedocs.io/en/release-1.1/write_first_app.html


Basic chain code coding 
-------------

- http://hyperledger-fabric.readthedocs.io/en/release-1.1/chaincode4ade.html
- fabcar
- fabcoin (assignment)
- automatic conditional transcation


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
