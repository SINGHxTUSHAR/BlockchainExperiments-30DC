// Author: TUSHAR SINGH
// Built in keywords
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract Blocktrain{
    /***************************************************************************************/
    //tx
    //tx.gasprice //gas price for the transaction
    //tx.origin //address which initiate the transaction

    //msg
    //msg.sender //address which call's the current transcation or function
    //msg.value //amout of the ether(WEI) sent to the smart contract

    /*
    // TUSHAR signs a smart contract A
    // tx.origin = TUSHAR
    // msg.sender = TUSHAR


    // smart contract A calls smart contract B
    // tx.origin = TUSHAR
    // msg.sender = smart contract B
    */

    /****************************************************************************************/
    //block
    //block.timestamp //timestamped of the block mined(epoch)

    // uint256 time = 1685000783
    // require(block.timestamp >= time);


    /*****************************************************************************************/
    //ether uints
    // 1 wei == 1
    // 1 szabo == 1e12
    // 1 finney == 1e15
    // 1 ether == 1e18

    /******************************************************************************************/
    //time uints
    // 1 second == 1
    // 1 minute == 60 seconds
    // 1 hour == 60 minutes
    // 1 day == 24 hours
    // 1 week == 7 days

    /*******************************************************************************************/
}