// Author: TUSHAR SINGH
// creating a Bank using solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Blocktrain{
    struct Account{
        address owner;
        uint256 balance;
        uint256 accountCreatedTime;
    }
    mapping(address => Account) public  jethalalFund;

    // event to log the deposit funds into bank
    event balanceAdded(address owner, uint256 balance, uint256 timestamp);
    //event to log the withdraws from the bank
    event withdrawalDone(address owner, uint256 balance, uint256 timestamp);

    //condition to create an account or to transfer ether
    modifier minimum(){
        require(msg.value >= 1 ether,"This is the minimum balance required");
        _;
    }
    
    //function to create a account
    function accountCreated() 
    public 
    payable 
    minimum {
        jethalalFund[msg.sender].owner = msg.sender;
        jethalalFund[msg.sender].balance = msg.value;
        jethalalFund[msg.sender].accountCreatedTime = block.timestamp;
        emit balanceAdded(msg.sender, msg.value, block.timestamp);
    }

    //function to deposite the funds
    function deposite()
    public 
    payable 
    minimum{
        jethalalFund[msg.sender].balance += msg.value;
        emit balanceAdded(msg.sender, msg.value, block.timestamp); //trigger the balanceAdded event
    }

    //function to withdraw the funds
    function withdrawal()
    public
    payable {
        payable (msg.sender).transfer(jethalalFund[msg.sender].balance);
        jethalalFund[msg.sender].balance = 0;   // setting balance to zero due to withdraw
        emit withdrawalDone(msg.sender, jethalalFund[msg.sender].balance, block.timestamp);  //trigger withdrawalDone event
    }
    
}