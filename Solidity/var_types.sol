/*Author: TUSHAR SINGH*/
// variable tpes in solidity
// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

contract Blocktrain{
    //fixed size
    uint256 unsignednumber;
    int256 num;
    bool state;
    address user;
    bytes32 e;

    //dynamic size
    string s;
    bytes something;
    uint[] arr;
    mapping (uint256 => address) students;


    //user defined
    struct student{
        string name;
        uint256 roll_num;
    }
    mapping (uint256 => student) studentDatabase;

    enum gamelevel{
        novice,
        intermediate,
        expert,
        legend,
        grand_master
    }
    // gamelevel.expert

    //control statements
    uint256 public coins = 0;

    function add(uint256 _num) public{
        if(_num >= 100){
            coins+=_num;
        }
        else if(_num < 100) coins = 100;
    }
}