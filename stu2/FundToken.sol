// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FundToken {
    // 通证的名字
    // 通证的简称
    // 通证的发行量
    // owner 地址
    // balance address => uint256
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalSupply;
    address public owner;
    mapping(address => uint256) public balances;

    constructor(string memory _takenName, string memory _tokenSymbol) {
        tokenName = _takenName;
        tokenSymbol = _tokenSymbol;
        owner = msg.sender;
    }

    // mint: 获取通证
    function mint(uint256 amountToMint) public {
        balances[msg.sender] += amountToMint;
        totalSupply += amountToMint;
    }

    // transfer: transfer 通证
    function transfer(address payee, uint256 amount) public {
        require(balances[msg.sender] >= amount, "no enough token");
        balances[msg.sender] -= amount;
        balances[payee] += amount;
    }

    // balanceOf:查看某一个地址的通证数量
    function balanceOf(address addr) public view returns (uint256) {
        return balances[addr];
    }
}
