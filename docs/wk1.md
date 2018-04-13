
Hyperledger chaincode 구축해보기 (1wk)
=============

Goal
 - Hyperledger의 기본적인 컨셉 이해
 - Docker 및 Hyperledger 명령어를 학습하여 사용환경 구축 
 - 체인코딩 작성 학습

Contents
- Hyperledger overview
- Docker overview
- AWS Setup
- Simple private blockchain (1orderer, 2peer, 2node)
- Basic chain code coding 

Hyperledger overview
-------------

- Public vs Private blockchain
- Permissioned blockchain
- Composition
    - Peer
    - Orderer
    - MSP
    - CA
    - Organization
- ChainCode (vs EVM, Solidity)

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
