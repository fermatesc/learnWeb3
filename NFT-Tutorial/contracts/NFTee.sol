// SPDX-LicenseIdentifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTee is ERC721 {
  constructor() ERC721("NFTee", 'ITM'){
    //mint 1 NFT to myself
    _mint(msg.sender, 1);// emiter address(me), number of NFTs to mint
  }
}