
Hyperledger Fabric Chaincode 실습 (2wk)
=============

QnA
- PoS와 51% attack?

Overview
- Ethereum (최치영)
- 1wk summary (이상아)

Goal
 - Fabric w/ ChainCode 구축
 - ChainCode 원리 이해
 - ChainCode 코드 작성


ChainCode Analysis
-------------
1. SimpleAssets
    - [Code](https://github.com/hyperledger/fabric-samples/blob/release-1.1/chaincode/sacc/sacc.go)
    - Init
    - Invoke
        - get & Set 
1. Fabcar
    - [Code](https://github.com/hyperledger/fabric-samples/blob/release-1.1/chaincode/fabcar/go/fabcar.go)
    - http://hyperledger-fabric.readthedocs.io/en/release-1.1/write_first_app.html
    - http://hyperledger-fabric.readthedocs.io/en/release-1.1/understand_fabcar_network.html
1. Marbles
    - [Code](https://github.com/hyperledger/fabric-samples/blob/release-1.1/chaincode/marbles02/go/marbles_chaincode.go)
    - CreateCompositeKey
    - Rich Query
        - queryMarbles -> getQueryResultForQueryString
        - Only for CouchDB
    

ChainCode Deploy & Invoke
-------------
1. [CodeBase](https://github.com/jaewonha/fabric-samples)
1. Deploy
    - [1-Node / 1-Org](https://github.com/jaewonha/fabric-samples/blob/release/first-network/scripts/1node_standalone_fabcar_script.sh)
    - [N-Node / N-Org](https://github.com/jaewonha/fabric-samples/blob/release/first-network/scripts/standalone_fabcar_script.sh)
    - byfn.sh
2. Invoke
    - [Fabcar using Node.JS](http://hyperledger-fabric.readthedocs.io/en/release-1.1/build_network.html)


Assignment: Build your own Token Provider using OpenChain
-------------

- [Ethereum ERC-20](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md)
- Build same w/ OpenChain
- Provide REST APIs (similar functionaliy of Ethereum Web3)
    - [API server using node.js express](https://github.com/jaewonha/fabric-samples/blob/release/fabcar/server.js)

