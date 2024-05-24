// Author: TUSHAR SINGH
// Fund raising app smart contract
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract fundraising{

    address public owner;
    uint256 public goal;
    uint256 public totalRaised;
    
    //mapping to track each and every donation
    mapping(address => uint256) public donations;
    
    // event to log donations
    event Donated(address indexed donor, uint256 amount);
    
    // event to log the withdraws
    event Withdrawn(uint256 amount);


    // To Give the Special access to the owner only
    modifier onlyOwner(){
        require(msg.sender == owner,"only owner can access this!");
        _;
    }
    //constructor to initialize the contract with a goal
    constructor(uint256 _goal){
        owner = msg.sender;
        goal = _goal;
    }
    
    //function to donate the fund raised
    function donate() payable external {
        require(msg.value > 0,"donation amount sholud be more than 0");
        donations[msg.sender]+=msg.value;
        totalRaised+=msg.value;
        emit Donated(msg.sender, msg.value);
    }

    //function to withdraw funds once the goal is met
    function withdraw() external onlyOwner{
        require(totalRaised >= goal, " goal is not yet complete!");
        uint256 amount = address(this).balance;
        payable(owner).transfer(amount);

        emit Withdrawn(amount);
    }

    //function to check the balance
    function getBalance() external view returns (uint256){
        return  address(this).balance;
    }
}