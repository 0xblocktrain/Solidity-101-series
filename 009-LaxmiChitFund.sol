// SPDX-License-Identifier: MIT

// Let's code a Bank !!
pragma solidity >=0.8.4; // solidity compiler version

contract Blocktrain {
    struct Account {
        address owner;
        uint256 balance;
        uint256 accountCreatedTime;
    }
    mapping(address => Account) public LaxmiChitFund;

    event balanceAdded(address owner, uint256 balance, uint256 timestamp);
    event withdrawalDone(address owner, uint256 balance, uint256 timestamp);

    modifier minimum() {
        require(msg.value >= 1 ether, "Doesn't follow minimum criteria");
        _;
    }

    // account creation
    function accountCreated() public payable minimum {
        LaxmiChitFund[msg.sender].owner = msg.sender;
        LaxmiChitFund[msg.sender].balance = msg.value;
        LaxmiChitFund[msg.sender].accountCreatedTime = block.timestamp;
        emit balanceAdded(msg.sender, msg.value, block.timestamp);
    }

    // depositing funds
    function deposit() public payable minimum {
        LaxmiChitFund[msg.sender].balance += msg.value;
        emit balanceAdded(msg.sender, msg.value, block.timestamp);
    }

    // withdrawal
    function withdrawal() public payable {
        // address.transfer(amount to transfer)
        payable(msg.sender).transfer(LaxmiChitFund[msg.sender].balance);
        LaxmiChitFund[msg.sender].balance = 0; // clear the balance
        // payable(msg.sender)
        emit withdrawalDone(
            msg.sender,
            LaxmiChitFund[msg.sender].balance,
            block.timestamp
        );
    }
}
