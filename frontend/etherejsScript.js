import { ethers } from "ethers";
let url = "http://localhost:8545";
const provider = new ethers.JsonRpcProvider(url);

// this give exact blocknumber as we check on etherscan
console.log("block nunber", await provider.getBlockNumber());

// if we want to get the real address by pasing ens name
console.log("real address", await provider.resolveName("vitalik.eth"));

// convert address to ens name

console.log(
  "0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045 ens name is ",
  await provider.lookupAddress("0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045")
);

// get balance of perticular account in wei.

let vitalikBalance = (await provider.getBalance("vitalik.eth")).toString();

// if want to get exact value we can use here formatEther method .

console.log("fromattedEther", ethers.formatEther(vitalikBalance));
