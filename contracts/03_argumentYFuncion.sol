// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract argumentyFuncion {

    uint numero;

    function set(uint _x) public {
        numero = _x;
    }

    function get() public view returns(uint) {
        return numero;
    }

}