/* 
1. dada una serie -S-, donde el proximo termino es la suma de los 3 terminos previos. 
Dados los primeros terminos de la serie -a,b,c- y respectivamente, tenes que hacer output del enesimo termino de la serie.abi
2. Por ej. si S(n) = a para n = 1
S(n) = b para n = 2
S(n) = c para n = 3
S(n) = S(n-1) + S(n-2) + S(n-3) para n > 3
3. Crea una funcion enesimoTermino(uint n, uint a, uint b, uint c,) donde n es el enesimo termino de la serie, y a,b,c son los primeros terminos de la serie. 
Por ejemplo: si n=5, a=1, b=2, c=3, entonces enesimoTermino() debe devolver 11 porque 
S(1) = 1 
S(2)=2
S(3) = 3 
S(4) = S(3) + S(2) + S(1) = 1+2+3 = 6 
S(5) = S(4) + S(3) + S(2) = 6 + 3 + 2 = 11
La funcion debe ser public. */

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract enesimoNumero {
    
    function findEnesimo(uint256 _n, uint256 _n1, uint256 _n2, uint256 _n3) public pure returns (uint256) {
        
        uint256 _enesimo = _n1 + _n2 + _n3;

            for (uint256 i = 4; i < _n; i++) {
                _n1 = _n2;
                _n2 = _n3;
                _n3 = _enesimo;
                _enesimo = _n1 + _n2 + _n3;
            }

        return _enesimo;
    }
}