# Solidity-101-series

## 1. CRUD Operations in Solidity, Basic Smart Contract

-   Let’s understand create, read, update, delete operations in solidity.
-   Let’s understand the very basics of solidity and take things from here.
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/001-CRUD.sol)

```
contract  Blocktrain {
  uint256  public coins = 0;

  function  add() public {
     coins+=1;
  }

  function  subtract() public{
     coins-=1;
  }

  function  set(uint256  _coins) public{
     coins = _coins;
  }
}
```
    

## 2. Variable Data Types, Control Statements

-   Variables Datatypes are similar to other languages.
-   Some solidity specific variables include Address, Mapping(Hashmaps).
-   Control statements are simply  
    IF, ELSE IF, ELSE
-   It works similarly to any other language
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/002-Variables%2CControlStatements.sol)

## 3. Loops and Break Keyword

-   Loops can be used for a variety of reasons. Think of making a blog website where you want to fetch all the posts? You iterate over the posts and store them in a data structure through a loop.
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/003-Loops)
    

## 4. Constructor, Require and Modifiers

-   Constructor is the first function which gets triggered when the contract is deployed.
    
-   One can setup some parameters like owner and other things.
    
-   Require is a condition which needs to be satisfied else the code below the statement won’t be executed.
    
-   Require takes in a particular condition and the error message which should be shown if the condition is not followed.
    
-   Modifiers act as filters to the functions. Consider there is some condition which needs to be present before executing a function.
    
-   You create a modifier using require keyword and add that modifier in front of every function which should follow that condition.
    
-   You can create multiple modifiers for multiple reasons.
    
-   One example could be some functions should only be called the owner of the contract ( owner is the address which deployed the contract )
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/004-Constructor%2CRequire%26Modifier.sol)
    

## 5. Creating your own coin with Open Zeppelin

-   Open Zeppelin has this awesome tool Contract Wizard ([https://wizard.openzeppelin.com/](https://wizard.openzeppelin.com/)) which has a very simple UI to frame your basic smart contract.
    
-   Click on the functions you require in your smart contract, they currently support all the popular protocols, ERC20, ERC1155, ERC721
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/005-ERC20Coin.sol)
    

## 6. Built in keywords, msg, tx, block, ether units, time units

-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/006-BuiltInVariables.sol)
    
-   Above link is enough
    

## 7. Storage in Solidity

-   Storage in solidity is done in 4 ways
    
-   You can store some variables on the blockchain using “storage” keyword.
    
-   Memory keyword is used to add a lifetime for the variables, like you just require the parameters of the function till the function is executing, you don’t require it later. Thus Memory keyword is used.
    
-   Stack => All variables declared in a function are stored in a fixed size stack
    
-   Calldata => Similar to Memory, this variables have a lifetime but are immutable
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/007-StorageManagement.sol)
    

## 8. Events in Solidity

-   Events are basically a way to announce something in the outside world.
    
-   You can use events for any interaction which happens on the smart contract.
    
-   Something like an NFT got transferred from one address to other.
    
-   These events can be later indexed from outside the smart contract and makes it easier to render things in the frontend.
    
-   Events are used to keep a radar on smart contract interaction.
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/008-Events.sol)
    

## 9. Creating a Bank in Solidity

-   Let’s create a bank
    
-   The bank has multiple accounts, and each account has some variables to track.
    
-   The functions are pretty simple, creating account, depositing and withdrawing.
    
-   More functions can be added based on your imagination.
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/009-LaxmiChitFund.sol)
    

## 10. Variables and Functions Visibility Deep Dive

-   Variables and functions can be kept private as well as public as per required.
    
-   You want your smart contract to be deterministic. And thus one should take care about which variables and functions are accessible where.
    
-   Check the link below.
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/010-VariablesAndFunctionsVisibility.sol)
    

## 11. Coding a Vault

-   Let’s code a vault with a timer.
    
-   In the Vault you can store your crypto and add a timer on top of it. You can’t withdraw the funds until the timer runs out.
    
-   The code is pretty much similar to the bank we coded earlier but now we are dealing with time in solidity.
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/011-Vault.sol)
    

## 12. Interaction with Multiple Smart Contracts

-   Solidity is an Object oriented programming language and thus the OOPs concepts help us to manage the entire codebase in a neat manner.
    
-   You can keep different contracts in multiple files and import using the import keyword.
    
-   You can also keep all the contracts in a single file.
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/012-MultipleSmartContracts.sol)
    

## 13. Handling errors in solidity

-   Errors are handled using various checking mechanisms.
    
-   Require is one of them
    
-   Require is a condition which needs to be satisfied else the code below the statement won’t be executed.
    
-   Require takes in a particular condition and the error message which should be shown if the condition is not followed.
    
-   Assert is used when writing protocols as it should follow the conditions strictly.
    
-   Revert is used to break the transaction then and there. Its not used as Require does the work.
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/013-HandlingErrors.sol)
    

## 14. Creating a Smart Contract Factory

-   You can create one smart contract to create multiple new smart contracts.
    
-   Consider you are building a project which is a token launchpad where people can come in and launch their personal tokens.
    
-   This situation calls for a smart contract to make more.
    
-   It can be achieved by creating a parent contract and creating a new instance of the child contract whenever required.
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/014-SmartContractFactory.sol)
    

## 15. Sending ERC20 Token

-   Whenever dealing with transfers, its mostly the transfer of the native token, for Ethereum, transfer function sends Eth, For Polygon it sends Matic etc.
    
-   But we can also send any custom ERC20 token via just making a few tweaks.
    
-   One needs to import ERC20 standard from open zeppelin
    
-   And pass the contract address of the ERC20 token you want to transact with.
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/015-SendingERC20.sol)
    

## 16. Using Chain Link Data Feeds in Solidity

-   The smart contract is immutable once its deployed.
    
-   There might be cases where you require real time data in the smart contract like the current price of BTC or some API interaction.
    
-   This is where oracles come in, oracles are decentralized way to get the external world facts in the smart contract.
    
-   One of the leading oracles is Chainlink and they have a very easy documentation to get the data feeds on multiple chains.
    
-   [https://docs.chain.link/docs/using-chainlink-reference-contracts/](https://docs.chain.link/docs/using-chainlink-reference-contracts/)
    
-   Chainlink supports multiple chains on which you can get data feeds of multiple currencies.
    
-   [Github code](https://github.com/0xblocktrain/Solidity-101-series/blob/main/016-UsingChainlinkDataFeeds.sol)
