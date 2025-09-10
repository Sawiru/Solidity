// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// 3 ways to send ETH
// transfer - 2300 gas, reverts
// send - 2300 gas, returns bool
// call - all gas, returns bool and data

contract SendEther {
    constructor() payable {}

    recieve() external payable {}

    function sendViaTransfer(address payable _to) external payable {

    }

    function sendViaSend(address payable _to) external payable {

    }

    function sendViaCall(address payable _to) external payable {
        
    }
}