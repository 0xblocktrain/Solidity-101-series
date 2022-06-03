// SPDX-License-Identifier: MIT

// Constructor, Require Keyword and Modifiers
pragma solidity >=0.8.4; // solidity compiler version

contract Blocktrain {
    address public owner;

    constructor() {
        // the first function to get triggered when a smart contract is deployed
        owner = msg.sender;
    }

    uint256 public coins = 0;

    function add() public {
        require(coins <= 3, "Too many Coins!!"); //  a condition which should be satisfied else
        // the transaction will fail
        coins++;
        // something else
    }

    modifier onlyOwner() {
        // acts as a filter to any function
        require(msg.sender == owner, "You are not the owner!!");
        // require()
        _;
    }

    function subtract() public onlyOwner {
        coins--;
    }
}
