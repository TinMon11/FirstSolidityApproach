/* 
1. Crea una funcion sumaArray(array, arraylength). 
sumaArray tomara dos argumentos,  una dinamica uint type array y la longitud del array.
2. sumaArray() agregara todos los elementos de un array.
Por ejemplo, si array = [4,2,3,4], entonces sumaArray devolvera 13. */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract sumaArray {
    
    // This function returns the sum of the elements of the array.

    function suma(uint256[] calldata _arraypublic) public pure returns (uint256) {
        uint256 _arraySize = _arraypublic.length;
        uint256 sum = 0;

        for (uint i = 0; i < _arraySize; i++) {
            sum = sum + _arraypublic[i];
        }
        return sum;
    }

}