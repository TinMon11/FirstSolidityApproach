// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract remainer {

    function find(uint _x) public pure returns (uint) {
    uint remainder = _x % 3;
    return remainder;
    }
}
