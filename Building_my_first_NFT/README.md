# Build my own NFT using ERC-721
## Tools and techologies used
- Metamask wallet and Goerli test network
- Node.js
- Hardhat
- openzeppelin contracts
- Quicknode

## Build
```
npm init --yes
npm install --save-dev hardhat
```
```
npx hardhat
```
<br/>
Select Create a Javascript Project

### Writing NFT contract code
```
npm install @openzeppelin/contracts
```

``` Solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import the openzepplin contracts
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// contract NFTee is  ERC721 signifies that the contract we are creating imports ERC721 and follows ERC721 contract from openzeppelin

contract NFTee is ERC721 {

    constructor() ERC721("NFTee", "ITM") {
        // mint an NFT to yourself
        _mint(msg.sender, 1);
    }
}
```
Compile the contract, open up a terminal and execute these commands
```
npx hardhat compile
```

### Deployment
For deployment, create a file named deploy.js in script section amd write the follwing code that use ethers that is simply get the contract by it's name and call the deploy method on it.
```
// Import ethers from Hardhat package
const { ethers } = require("hardhat");

async function main() {
  /*
A ContractFactory in ethers.js is an abstraction used to deploy new smart contracts,
so nftContract here is a factory for instances of our GameItem contract.
*/
  const nftContract = await ethers.getContractFactory("NFTee");

  // here we deploy the contract
  const deployedNFTContract = await nftContract.deploy();

  // wait for the contract to deploy
  await deployedNFTContract.deployed();

  // print the address of the deployed contract
  console.log("NFT Contract Address:", deployedNFTContract.address);
}

// Call the main function and catch if there is any error
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
```
Then go to Quicnode and get the HTTP_URL by creating a new endpoint on yhr Ethereum/Goerli network and get your private key from your account andput them in a .env file

<br/>
Go to the hardhat configuration file ```hardhat.config.js``` and add then goerli network in the exported modules
```
require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({ path: ".env" });

const QUICKNODE_HTTP_URL = process.env.QUICKNODE_HTTP_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

module.exports = {
  solidity: "0.8.9",
  networks: {
    goerli: {
      url: QUICKNODE_HTTP_URL,
      accounts: [PRIVATE_KEY],
    },
  },
};
```
Finally run the following script tp deploy it
```
npx hardhat run scripts/deploy.js --network goerli
```
<b><i>You can check by copying your contract address in Goerli Etherscan and search your address
f the address opens up on etherscan, you have deployed your first NFT 🎉
</i></b>
