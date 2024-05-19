// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.4-solc-0.7/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor () ERC20("SINGHxTUSHAR", "MyCoin_mojo"){
        _mint(msg.sender, 10000 * (10 ** uint256(decimals())));
    }
}



