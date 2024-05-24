// Author: TUSHAR SINGH
// coding a vault 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Blocktrain{

    address public owner;

    struct locker{
        uint256 value;
        uint256 time_locked;
    }
    uint256 counter = 0;
    mapping(uint => locker) vault;

    //to add the security to the vault , so that only owner can access
    modifier onlyOwner(){
        require(msg.sender == owner,"cann't touch this  !");
        _;
    }
    
    //constructor to set the first operation of smart contract - to set the owner
    constructor(){
        owner = msg.sender;
    }

    // function to deposite the funds to the vault
    function deposite(uint256 _time) 
    public
    payable {
        counter+=1;
        vault[counter].time_locked = _time;
        vault[counter].value = msg.value;
    }

    function withdraw(uint _lockerNumber)
    public 
    onlyOwner{
        require(block.timestamp >= vault[_lockerNumber].time_locked,"Your locker cann't be accessed as the time is remaning");
        payable(owner).transfer(vault[_lockerNumber].value);
    }


}