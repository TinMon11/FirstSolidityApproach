/* 
el Factor Comun mas Alto   de dos números es el número más grande que es un factor de ambos números
1. crea una funcion factorComunMasAlto(num1, num2). 
Esta funcion toma argumentos tipo uint.
2. factorComunMasAlto() debe devolver el factor comun mas alto de num1 y num2.
Por ejemplo, si num1 = 60 y num2 = 75, entonces factorComunMasAlto() debe devolver 15.
*/


// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract factorComunAlto {


    function FactorComun(uint _n1, uint _n2) public pure returns(uint) {
        uint _temp = 0;
        while (_n2 != 0) {
            _temp = _n2;
            _n2 = _n1 % _n2;
            _n1 = _temp;
        }

    return _n1;
    }

}
