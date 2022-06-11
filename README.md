# POLYGON ENCODE CHALLENGE

This project demonstrates how to mint an NFT on Polygon using Hardhat and verify the contract on Polygonscan.

The contract address is: 0x2e30280CA7E65701b2E3595135A9A9EEa8aA01aC

Check it at Polygonscan Mumbai [link](https://mumbai.polygonscan.com/address/0x2e30280CA7E65701b2E3595135A9A9EEa8aA01aC)

The contract is verified in Polygon Mumbai testnet at the following Polygonscan Mumbai [link](https://mumbai.polygonscan.com/address/0x2e30280CA7E65701b2E3595135A9A9EEa8aA01aC#code)

You can see a couple of NFTs minted at Opensea [here](https://testnets.opensea.io/collection/cryptorollercoasterscream-v2)


## Get started

Make sure you have installed [git](https://git-scm.com), [NodeJS](https://nodejs.org) ([nvm](https://github.com/nvm-sh/nvm) is recommended)

Then clone the repo and install dependencies by running these commands:

```
git clone https://github.com/ivanmolto/polygon-encode-challenge.git
cd polygon-encode-challenge
npm install
```

## Compile, Deploy and Verify

Compile and deploy to Polygon Mumbai the smart contract by running this command:

`npx hardhat run scripts/deploy.js --network polygonMumbai`

The console logs with display the smart contract address.

Then Verify the smart contract by running this command:

`npx hardhat verify "YOUR_CONTRACT_ADDRESS"  --network polygonMumbai`

For this challenge these are the tools and languages used:
- [Polygon Faucet](https://faucet.polygon.technology)
- [Solidity](https://docs.soliditylang.org/en/v0.8.14)
- [Hardhat](https://hardhat.org/)
- [Alchemy](https://www.alchemy.com/)
- [base64 encoder](https://www.utilities-online.info/base64)
- [NFT.storage](https://nft.storage)


## About the NFT 

I felt inspired by Edvard Munch's "The Scream" work while I was looking for a way to allow people to go deep into their own crypto experiences. Let them immerse themselves in some form of tension but also a playful state.

The vertical gradient of green and red (trading colors) is overshadowed by layers of brushes. The brushes are complex composite shapes based on a colors palette from "The Scream".

I would love to think that Crypto Roller Coaster Scream is the ultimate image for the anxieties of our crypto age. With ups and downs not only by trading, but also while holding and building. And the FOMO of being in or out of the "gradient".

The black depth is the brutal absense of emotions while not being in the play.


## Techniques used

Generative algorithmic art on top of the HTML5 Canvas API.

## License

The code is licensed under a MIT License.
