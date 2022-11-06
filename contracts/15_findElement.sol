/* crea una funcion buscar(array, arrayLength,elementoABuscar). 
Esta funcion debe tomar tres argumentos, una dinamica uint type array, la longitud del array y el elemento a buscar.
2. buscar() buscara un elemento en un array.

*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract findElement {
    
    // This function searchs an element. If founded returns 1, if not, 0.

    function buscarElemento(uint[] memory _array, uint _arraySize, uint _buscado) public pure returns (uint256) {
        
        for (uint i = 0; i < _arraySize; i++) {
            
            if (_array[i] == _buscado) {
                return 1;
            }
        }

        return 0;
    }
}