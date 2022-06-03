// SPDX-License-Identifier: MIT

// Variables and Control Statements
pragma solidity >=0.8.4; // solidity compiler version

contract Blocktrain {
    // fixed size
    uint256 unsignedNumber;
    int256 Number;
    bool state;
    address user;
    bytes32 e;

    // dynamic size
    string s;
    bytes something;
    uint[] array;
    mapping(uint256 => mapping(uint256 => address)) database;

    // user defined
    struct student {
        string name;
        uint256 rollNumber;
    }
    mapping(uint256 => student) studentDatabase;

    enum gameLevel {
        Novice,
        Intermediate,
        Expert
    }
    // gameLevel.Novice

    // control statements

    uint256 public coins = 0;

    function add(uint256 _num) public {
        if (_num == 100) {
            coins += _num;
        } else if (_num < 100) {
            coins += 100;
        } else {
            // just sit
        }
    }
}
