// SPDX-License-Identifier: MIT

// Interaction of multiple smart contracts
pragma solidity >=0.8.4; // solidity compiler version

contract Blocktrain {
    // what is required for calling other smart contracts
    // 1. interface of the other contract
    // 2. address

    address second;

    function setAddress(address _second) public {
        second = _second;
    }

    function calling() public returns (string memory) {
        OtherSmartContract b = new OtherSmartContract();
        return b.doingSomething();
    }
}

contract OtherSmartContract {
    function doingSomething() external pure returns (string memory) {
        return "Hello from the other Smart contract";
    }
}
