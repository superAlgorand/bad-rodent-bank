// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function downNumber(uint256 deltaNegative) public {
        number -= deltaNegative;
    }

    function increment() public {
        number++;
    }
}
