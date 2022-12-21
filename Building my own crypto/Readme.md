# Build my own cryptocurrency using ERC-20 tokens
----
Create and deploy an ERC-20 token on Ethereum.
### Tools used
1. Metamask wallet
2. Remix IDE

### Prerequisites
-	Make sure you have downloaded and installed Metamask.
-	Select the Goerli Testnet network to work with
-	Request some testnet ether on Goerli through any one of the following faucets

### Code and explanation
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract LW3Token is ERC20 {
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        _mint(msg.sender, 10 * 10 ** 18);
    }
}
```
<b>Let’s break it down and explain each line of it:</b>
1.	Pragma : compiler version of Solidity to be used
2.	Import the ERC-20 token from  OpenZeppelin (OZ).
3.	Then we start creating the Contract and we name it LW3Token wich is extends or instance of the ERC20, so then  all the functions and logic that is built into ERC20 is available for us to use, and we can add our own custom logic on top of it.
4.	Then we define the constructor (like in java, each class has a constructor ) that it’s called when the smart contract is first deployed. 2 argument in constructor : _name and  _symbol, which are the name and symbol of the cryptocurrency, (ex : ETHERIUM and ETH)  
5. _mint is an internal function within the ERC20 standard contract, which means that it can only be called by the contract itself. External users cannot call this function.
  msg.sender is a global variable injected by the Ethereum Virtual Machine, which is the address which made this transaction. Since you will be the one deploying this contract, your address will be there in msg.sender.
10 * 10 ** 18 specifies that you want 10 full tokens to be minted to your address.

### Compiling and deploying
- Finally compile it by going over to the Compiler tab in Remix, selecting LW3Token.sol, and hitting Compile.
- Head over to the Deployer tab in Remix.
- Select the Injected Provider - MetaMask environment (ensure you are on the Goerli Test Network), and connect your Metamask wallet.
- Select the LW3Token.sol contract, and enter values for the constructor arguments _name and _symbol.
- Click Transact and approve the transaction from Metamask to deploy your contract!

### Viewing Tokens in Metamask
Tell Metamask to add it to your wallet manually by copying your contract address and click import tokens then enter token contract address and click add.
<p>
<img src="https://raw.githubusercontent.com/hbfawaz112/Blockchain-Development-Basics/main/Building%20my%20own%20crypto/metamask_own_token.PNG?token=GHSAT0AAAAAABRF6C5MDYR2HEDJ65YGKNSMY5DT5HQ"/>
  </p>
