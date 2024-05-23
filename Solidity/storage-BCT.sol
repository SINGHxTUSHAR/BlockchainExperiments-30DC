//Author: TUSHAR SINGH
// storage in BCT
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract Blocktrain{
    // storage in BCT is done in 4 ways
    // 1. storage => stored on blockchain // no fixed lifetime
    uint256 coins = 0;

    // 2. memory => the variable stored, have a liftime
    function addNames(string memory _names) public {
        //do something
    }
    // 3. stack => all variables declared in a function are stored in a fixed size stack
    function checking() public {
        uint256 a;
        string b;
        uint256 c;
    }
    // 4. calldata => similar to the memory, this variable have a lifetime but it is immutable in nature. 
    function addNames(string calldata _names) public {
        //do something //immutable var
    }
}