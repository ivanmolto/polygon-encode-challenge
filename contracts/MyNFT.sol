// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract MyNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("CryptoRollerCoasterScream", "CRCS") {
        console.log("This is my NFT contract!");
    }

    // A function users will use to get their NFT
    function makeMyNFT() public {
        // Get the current tokenId - starts at 0
        uint256 newItemId = _tokenIds.current();

        // Mint the NFT to the sender using msg.sender
        _safeMint(msg.sender, newItemId);

        // Set the NFTs data
        _setTokenURI(newItemId, "data:application/json;base64,eyJuYW1lIjoiQ3J5cHRvIFJvbGxlciBDb2FzdGVyIFNjcmVhbSIsImRlc2NyaXB0aW9uIjoiSW5zcGlyZWQgYnkgRWR2YXJkIE11bmNoIC0gVGhlIFNjcmVhbSAtIHdvcmsuIExvb2tpbmcgZm9yIGEgd2F5IHRvIGFsbG93IHBlb3BsZSB0byBnbyBkZWVwIGludG8gdGhlaXIgb3duIGNyeXB0byBleHBlcmllbmNlcyBhbmQgbGV0IHRoZW0gaW1tZXJzZSB0aGVtc2VsdmVzIGluIHNvbWUgZm9ybSBvZiB0ZW5zaW9uIGJ1dCBhbHNvIGEgcGxheWZ1bCBzdGF0ZS4gVGhlIHZlcnRpY2FsIGdyYWRpZW50IG9mIGdyZWVuIGFuZCByZWQsIHRyYWRpbmcgY29sb3JzLCBpcyBvdmVyc2hhZG93ZWQgYnkgbGF5ZXJzIG9mIGNvbXBsZXggY29tcG9zaXRlIHNoYXBlcyBiYXNlZCBvbiBhIGNvbG9yIHBhbGV0dGUgZnJvbSAtIFRoZSBTY3JlYW0gLS4iLCJpbWFnZSI6Imh0dHBzOi8vYmFmeWJlaWY2NWFqY2RiZmpjbm53c24ycno3cXNseHUzc2pkb21hcjZhbzRmYmFzbXVyMjVnaG9sY3kuaXBmcy5uZnRzdG9yYWdlLmxpbmsvIn0=");
        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

        // Increment the counter for wen the next NFT is minted
        _tokenIds.increment();
    }
}