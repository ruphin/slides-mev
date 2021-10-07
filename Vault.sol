// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Vault {
    
    bytes32 public secret = 0x65462b0520ef7d3df61b9992ed3bea0c56ead753be7c8b3614e0ce01e4cac41b;
    
    constructor() payable {}
    
    function take(string calldata guess) external {
        if (keccak256(abi.encodePacked(guess)) == secret) {
            payable(msg.sender).transfer(address(this).balance);
        }
    }
}