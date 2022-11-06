/* 
1. Crea una funcion arrayReverso(array, lengthArray). 
Esta funcion tomara dos argumentos - un type uint dinamico array y la longitud del array.
2. arrayReverso() debe devolver un array con los elementos del array original en orden inverso.
Por ej: Si array = [1,2,3,4,5] entonces arrayReverso() debe devolver [5,4,3,2,1].
3. La funcion debe ser public.
*/  

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract arrayReverso {
    
    // This function returns the reverse of an array.

    function reverseArray(uint[] calldata _array, uint _arraySize) public pure returns (uint[] memory) {
        
        uint[] memory _reverseArray = new uint[](_arraySize);
        uint pos = 0;
        
        for (uint i = _arraySize; i > 1; i--) {
            _reverseArray[pos] = _array[i-1];
            pos++;
        }
        return _reverseArray;
    }

}