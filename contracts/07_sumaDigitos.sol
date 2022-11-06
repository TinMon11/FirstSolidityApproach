    /* crea una funcion digitoSuma(int n) donde n>0;
    devolve la suma de los digitos de n.
    Por ej. si n=345, entonces digitosSuma(n) debe devolver 12 (3+4+5=12).
    La funcion debe ser public. */

    // SPDX-License-Identifier: GPL-3.0
    pragma solidity ^0.8.13;

    /// @notice This function will return the sum of a number digits.

    contract sumaDigitos {
        function sumarDigitos(uint256 _number) public pure returns (uint256) {
            uint256 _acumm = 0;
            _acumm = _acumm + (_number % 10);
            _number = _number / 10;
            while (_number >= 9) {
                _acumm = _acumm + (_number % 10);
                _number = _number / 10;
            }
            _acumm = _acumm + _number;

            return _acumm;
        }
    }
