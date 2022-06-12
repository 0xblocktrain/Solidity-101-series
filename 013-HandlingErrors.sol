// SPDX-License-Identifier: MIT

// Handling Errors in Solidity
pragma solidity >=0.8.4; // solidity compiler version

contract Blocktrain {
    // Ways to keep a check
    // 1. Require
    function hello() public pure {
        //doing something
        require(10 < 5, "I am bad at math");
        // this code will not be executed
    }

    // 2. Assert
    function something() public pure {
        assert(10 != 10);
    }

    // 3. Revert

    function otherThing() public pure {
        if (10 < 5) {
            revert();
        }
    }
}
