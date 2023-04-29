pragma solidity ^0.8.0;
import "./Uniswap.sol";
import "./IERC20.sol";

contract TestUniswap {
    address private constant UNISWAP_V2_ROUTER =
        0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;
    address private constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address private constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    function swap(
        address _tokenIn, // address of token that we are trading eg dai token address
        address _tokenOut, // address of token that we are getting eg. wrapped eth address
        uint _amountIn, // amount of token that are we trading amount of dai token
        uint _amountOut, // amount of token we getting amount of wrapped eth
        address to // address to which wrapped eth  will transfered
    ) external {
        
        IERC20(_tokenIn).transferFrom((msg.sender), address(this), _amountIn);
        // here we are transferring amount from sender wallet to this contract
        IERC20(_tokenIn).approve(UNISWAP_V2_ROUTER, _amountIn);
        // allow to spend token to uniswap on the behalf of caller of this function

        // now create path address type array that going to store three token
        //first is dai
        // 2nd is wrapped eth
        // 3rd is wrapped btc // which are we getting in exhange of wrapped eth wrapped because it is good deal as we compared it to dai

        address[] memory path;
        path = new address[](2);
        path[0] = _tokenIn;
        path[1] = WETH;

        // now call uniswap interface and its function

        IUniswapV2Router(UNISWAP_V2_ROUTER).swapExactTokensForTokens(
            _amountIn,
            _amountOut,
            path,
            to,
            block.timestamp
        );
    }
}
