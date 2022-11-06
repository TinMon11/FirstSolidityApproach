/*
Concatenar dos cadenas.
Cree la función concatenar ( ).  
Esta función tomará dos argumentos, es decir, la cadena 1 y la cadena 2. Concatenará la cadena 1 y la cadena 2 y devolverá la cadena concatenada.
*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Concatenar {

    function conc(string memory cadena1, string memory cadena2) public pure returns(string memory) {
      string memory CadenaFinal = string.concat(cadena1,cadena2);
      return CadenaFinal;
    }
}