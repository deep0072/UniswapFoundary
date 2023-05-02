// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";

// import "../src/testUniswap.sol";

// address constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
// address constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;

// contract TestUniswapTest is Test {
//     IERC20 public dai = IERC20(DAI);
//     IERC20 public weth = IERC20(WETH);
//     TestUniswap private constant uniswap = new TestUniswap();
//     address alice;

//     function setUp() public {
//         //createa address
//         vm.startBroadcast("impersonated-account");
//         alice = makeAddr("ALICE");
//         deal(address(dai), alice, 10_000e18);
//     }

//     function test_Swap() public {
//         uint daiAmount = 1e18 * 1000; // 100 $ of dai

//         dai.approve(address(uniswap), daiAmount);

//         uint wethAmountMin = 1;
//         uniswap.swap(
//             DAI,
//             WETH,
//             daiAmount,
//             wethAmountMin,
//             0xaD0135AF20fa82E106607257143d0060A7eB5cBf
//         );
//     }
// }
