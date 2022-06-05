// SPDX-License-Identifier: MIT

// Variables and Function Visibility Deep Dive
pragma solidity >=0.8.4; // solidity compiler version

contract Blocktrain {
    // variables visibility

    // private => variable can only be called from the original contract
    uint private coins = 0;

    // internal => variable can also be called from the contracts who inherit original contract
    uint internal variable = 0;

    // public => variable can be accessed from anywhere
    uint public IamPublic = 0;

    // functions visibility

    // private => function can only be called from the original contract
    function setValue() private {
        // do something
    }

    // internal => functions can be called by other contracts who inherit original contract
    function getValue() internal {
        // do something
    }

    // external => function can only be called from outside the contract
    function someRandomFunction() external {
        // do something
    }

    // public => function can be called from anywhere
    function otherRandomFunction() public {
        // do something
    }
}
