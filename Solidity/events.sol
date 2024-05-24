// Author: TUSHAR SINGH
// Events in solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Blocktrain{

    struct student{
        string name;
        string emailId;
        uint256 contactNumber;
        uint256 rollNUmber;
        uint256 timestamp;
    }
    mapping(uint256 => student) public studentDatabase;    
    uint256 rollNumber = 1;

    event studentAdded(
        string name,
        uint256 rollNumber,
        uint256 timestamp
    );

    function addStudent(
        string memory _name,
        string memory _emailId,
        uint256 _contactNumber
    ) public{
        studentDatabase[rollNumber].name = _name;
        studentDatabase[rollNumber].emailId = _emailId;
        studentDatabase[rollNumber].rollNumber = rollNumber;
        studentDatabase[rollNumber].contactNumber = _contactNumber;
        studentDatabase[rollNumber].timestamp = block.timestamp;
        emit studentAdded(_name, rollNumber, block.timestamp);
        rollNumber+=1;
    }
}