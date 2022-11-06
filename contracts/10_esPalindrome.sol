/* un numero palindrome es un numero que es el mismo de principio a fin y de fin a principio, por ej 545. 
Crea una funcion que se llame esPalindrome(uint) para chequear si un numero es palindrome o no, debiendo dar result 1 or 0. 
La funcion debe ser public. */ 

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract palindrome {

    // This function returns 0 if the number isn't Palindrome. Or 1 if it is.

    function esPalindrome (uint _n) public pure returns (uint) {

        uint reverseN = 0;
        uint _numToReverse = _n;

        while (_numToReverse > 0) {
            reverseN = (_numToReverse % 10) + reverseN*10;
            _numToReverse = _numToReverse/10;
        }

        if (_n == reverseN) {return 1;
        } else {
            return 0;
        }
    }
}