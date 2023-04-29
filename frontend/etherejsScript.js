import { ethers } from "ethers";
let url = "http://localhost:8545";
const provider = new ethers.JsonRpcProvider(url);

// this give exact blocknumber as we check on etherscan
console.log("block nunber", await provider.getBlockNumber());

// if we want to get the real address by pasing ens name
console.log("real addres", await provider.resolveName("vitalik.eth"));
