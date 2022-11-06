// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract operacionMatematica {

        function evaluar(int numero1, int numero2) public pure returns (int) {
        int resultado = (numero1 + numero2) - (numero1 - numero2);
        return resultado;
    }
}
