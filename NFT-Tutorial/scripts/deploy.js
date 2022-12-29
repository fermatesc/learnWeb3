// import ethers from hardhat package
const {ethers} = require("hardhat");

async function main(){
  //nftContract is a factory for instances of NFT contract
  const nftContract = await ethers.getContractFactory("NFTee");

  const deployedNFTContract = await nftContract.deploy(); //start to deploy the contract

  await deployedNFTContract.deployed(); // wait for the contract to deploy
  
  console.log("NFT Contract Address:", deployedNFTContract.address);
}

main().then(()=> process.exit(0)).catch((error)=> { console.error(error); process.exit(1);});