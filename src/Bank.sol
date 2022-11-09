// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Bank {
    mapping(address => uint256) balanceOf;

    function deposit() payable external {
        balanceOf[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        balanceOf[msg.sender] -= amount;
        payable(msg.sender).call{value: amount}('');
    }

    function withdrawFrom(address from, uint256 amount) public {
        balanceOf[from] -= amount;
        payable(msg.sender).call{value: amount}('');
    }

}
