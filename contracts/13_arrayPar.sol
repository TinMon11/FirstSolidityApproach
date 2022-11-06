/* 
1. Crea una funcion par(array, arraylength).
par() debe tomar dos tipos de argumentos - uno es un uint type array y el otro length del array.
2. la funcion par() debe multiplicar cada elemento del array por dos. 
Por ejemplo: Si array = [1,2,3,4,5] entonces par() debe devolver [2,4,6,8,10].
3. La funcion debe ser public.
*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract arrayPar {
    
    // This function returns the an array multiplying its numbers by 2.

    function duplicaArray(uint[] memory _array) public pure returns (uint[] memory) {
        
        uint _arraySize = _array.length;
        for (uint i = 0; i < _arraySize; i++) {
            _array[i] = _array[i] * 2;
        }
        return _array;
    }

}