// SPDX-License-Identifier: MIT

// Creating new smart contracts from another smart contract
pragma solidity >=0.8.4; // solidity compiler version

contract Blocktrain {
    ASuperFancySmartContract[] public arrayOfContract;

    function publishing() public {
        ASuperFancySmartContract a = new ASuperFancySmartContract();
        a.doesSuperFancyStuff();
        arrayOfContract.push(a);
    }

    function checkingOwner(uint _number) public view returns (address) {
        return arrayOfContract[_number].owner();
    }
}

contract ASuperFancySmartContract {
    address public owner;

    constructor() {
        owner = tx.origin;
    }

    function doesSuperFancyStuff() public {
        // does something I don't know
    }
}

// factory smart contract => a
//                        => b

// User => Smart Contract Factory => Published Contract
