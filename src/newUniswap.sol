pragma solidity ^0.8.0;
import "./IERC20.sol";
import "./Uniswap.sol";

contract NewUniswap {
    address private constant dai = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address private constant weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address private constant UNISWAP_V2_ROUTER =
        0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;

    function swap(
        address token_in,
        address token_out,
        uint amount_in,
        uint amount_out,
        address to
    ) external {}
}