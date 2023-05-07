// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/testUniswap.sol";

contract testUniswapScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        TestUniswap uniswap = new TestUniswap();
        vm.stopBroadcast();
    }
}
