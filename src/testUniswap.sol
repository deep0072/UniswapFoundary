pragma solidity ^0.8.0;
import "./Uniswap.sol";
import "./IERC20.sol";

contract TestUniswap {
    address constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address constant UNISWAP_V2_ROUTER =
        0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;

    function swap(
        address _tokenIn,
        address _tokenout,
        uint _amountIn,
        uint _amountOut,
        address _to
    ) external {
        // now tranfer token from owner to this contract

        IERC20(_tokenIn).transferFrom(msg.sender, address(this), _amountIn);

        // then approve the uniswaoRouter  transferred token to spend on behalf of caller this function
        IERC20(_tokenIn).approve(UNISWAP_V2_ROUTER, _amountIn);

        // store the tokenin and token out address that we are trading
        address[] memory path;
        path = new address[](2);
        path[0] = _tokenIn;
        path[1] = _tokenout;

        IUniswapV2Router(UNISWAP_V2_ROUTER).swapExactTokensForTokens(
            _amountIn,
            _amountOut,
            path,
            _to,
            block.timestamp
        );
    }
}
