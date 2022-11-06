//SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.9;

contract promedio {

    function returnPromedio(uint numero1, uint numero2, uint numero3) public pure returns (uint) {
    uint prom = (numero1 + numero2 + numero3)/3;
    return prom;
    }
}