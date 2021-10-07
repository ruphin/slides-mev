// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FreeMoney {
    constructor() payable {}
    
    function take() external {
        payable(msg.sender).transfer(address(this).balance);
    }
}