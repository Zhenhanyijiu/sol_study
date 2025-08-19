// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {ERC20} from "@OpenZeppelin/contracts/token/ERC20/ERC20.sol";
import {FundMe} from "./FundMe.sol";

contract FundTokenERC20 is ERC20 {
    // This is a placeholder for the ERC20 token contract.
    // You would typically use an existing ERC20 implementation or create your own.
    FundMe fundMe;

    constructor(address fundMeAddr) ERC20("FundTokenERC20", "FT") {
        // 初始化一个FundMe合约，以后会调用它
        fundMe = FundMe(fundMeAddr);
    }

    function mint(uint256 amount) public {
        require(
            fundMe.getFundersToAmount(msg.sender) >= amount,
            "Not enough to mint"
        );
        require(fundMe.getFundSuccess(), "The fundme is not completed yet");
        _mint(msg.sender, amount);
        fundMe.setFundersToAmount(
            msg.sender,
            fundMe.getFundersToAmount(msg.sender) - amount
        );
    }

    function cliam(uint256 amount) public {
        require(
            balanceOf(msg.sender) >= amount,
            "You dont have enough ERC20 tokens"
        );
        require(fundMe.getFundSuccess(), "The fundme is not completed yet");
        _burn(msg.sender, amount);
    }
}
