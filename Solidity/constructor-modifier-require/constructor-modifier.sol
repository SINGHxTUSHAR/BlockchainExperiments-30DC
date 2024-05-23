// Author: TUSHAR SINGH
// Constructor , modifier, require keyword
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract Blocktrain{  //first fun. to execute after the contract is deployed
    address public owner;

    constructor(){
        owner = msg.sender; //wallet address of the transcation sender
    }

    uint256 public coins = 0;
    function add() public{
        require(coins<=3,"Too many coins !!");  //cond. needs to be satisfied to run the contract
        coins++;
    }

    modifier onlyOwner(){  //acts as a filter for the other functionnsa
        require(msg.sender == owner,"you are the owner");
        _;
    }

    function subtract() public onlyOwner{
        coins--;
    }
}