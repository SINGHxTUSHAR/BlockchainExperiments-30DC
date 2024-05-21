/*Author: TUSHAR SINGH*/
// loops in solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract Blocktrain{
    mapping (uint256 => string) public students;
    //types of loops

    // 1. For loop
    function add(uint256 _num) public{
        for(uint256 i=0; i<_num; i++){
            students[i] = "TUSHAR SINGH";
        }
    }

    // 2. WHILE LOOP
    function addNames(string [] memory _names) public {
        uint256 i=0;
        while(i<_names.length){
            students[i] = _names[i];
            i++;
        }

    }

    // 3. do while loop
    function letsBreak(uint256 _num) public{
        do{
            students[0] = "TUSHAR";
        }while(_num < 0);
    }

    //BREAK KEYWORD
    uint256 public coins = 0;
    function break_check() public{
        for(int i=0; i<10; i++){
            if(i==5) break;
            coins++;
        }
    }

}