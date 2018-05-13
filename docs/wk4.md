
Token 관련 (4wk)
=============

Ethereum Token 생성 & 전송
-------------
- [Build your token in 20min](https://medium.com/bitfwd/how-to-issue-your-own-token-on-ethereum-in-less-than-20-minutes-ac1f8f022793)
- Code Publish까지 진행하여, contract account에서 code가 보여야 함
- Publish진행하지 않아도 Token 전송은 됨

ERC20
-------------
```solidity
contract ERC20Interface {
    function totalSupply() public constant returns (uint);
    function balanceOf(address tokenOwner) public constant returns (uint balance);
    function allowance(address tokenOwner, address spender) public constant returns (uint remaining);
    function transfer(address to, uint tokens) public returns (bool success);
    function approve(address spender, uint tokens) public returns (bool success);
    function transferFrom(address from, address to, uint tokens) public returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}
```
GoLang
-------------
- [Go tutorial](https://tour.golang.org/welcome/1)
- [Go playground](https://play.golang.org/)

ChainCode로 ERC20 Token 작성
---------------------------
- ERC20스펙 참고하여 Go언어로 Chaincode작성
- fabcar.go에 내용 수정하여 넣는것이 
