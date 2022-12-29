// SPDX-LicenseIdentifier: MIT
pragma solidty ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTee is ERC721 {
  constructor() ERC721("NFTee", 'ITM'){
    //mint to myself
    _mint(msg.sender, 1);// emiter addresss(me), number of NFTs to mint
  }
}