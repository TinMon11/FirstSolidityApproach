/* crea una funcion numreverse(uint n). Esta funcion devolvera el numero reverso de n.
For ejemplo, si n=123, entonces numreverse(n) debe devolver 321.
La funcion debe ser public. */
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract reverseNumber {

    // This function returns the reverse of a Number. Example: 4512 --> 2154

    function reverse (uint _n) public pure returns (uint) {

        uint reverseN = 0;

        while (_n > 0) {
            reverseN = (_n % 10) + reverseN*10;
            _n = _n/10;
        }

        return reverseN;
    }
}