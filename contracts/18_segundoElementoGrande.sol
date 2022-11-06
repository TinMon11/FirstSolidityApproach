/* 
1. Crea una funcion segundoMax(array, arraylength). 
Esta funcion, tomara dos argumentos, una dinamic int type array y la longitud del array.
3. segundoMax() debe devolver el segundo numero mas grande del array. 
Por ejemplo, si array = [40, 12, 31, 6], entonces segundoMax() debe devolver 31.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract segundoGrande {
    
    // This function returns the second biggets number of an array

    function find2ndBigger(uint[] memory _arraypublic) public pure returns (uint) {
        uint _arraySize = _arraypublic.length;
        uint _primero = _arraypublic[0];
        uint _segundo = 0;

        for (uint i = 1; i < _arraySize; i++) {

            uint number = _arraypublic[i];

            if (number > _segundo) {
                if (number >= _primero) {
                    _segundo = _primero;
                    _primero = number;
                } else {
                    _segundo = number;
                }
            }
        }
        return _segundo;
    }
}