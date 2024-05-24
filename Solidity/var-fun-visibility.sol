// Author: TUSHAR SINGH
// variable and function visibility in solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Blocktrain{
    /****************************************************************************/
    //variable visibility

    //private - var that can only be called by the original contract
    uint private coins = 0;

    //interal - var that can also be called by the inherited contract
    uint internal varA = 0;

    //public - variable that can be accessed from any where
    uint public Pubvar = 0;

    /****************************************************************************/
    //function visibility

    //private - fun that can only be called from the original contract
    function setValue() private{
        //do something
    }

    //internal - fun that can only be called by the inherited or the original contract
    function getValue() internal {
        //do something
    }

    //external - fun that are only called from outside the contract
    function someExternalFun () external {
        //something code
    }

    //public - fun that can be called from any where
    function PublicFun() public {
        //code
    }
    /***********************************************************************************/

}