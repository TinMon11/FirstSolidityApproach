/*Crea un constructor() para mantener la dirección del propietario. [Pista: usa msg.sender]
Crea una función returnOwner() que devuelva la dirección del propietario. 
Esta función returnOwner() sólo puede ser llamada por el propietario (que establecimos usando constructor()). Si alguna otra dirección trata de llamar a esta returnOwner() debe revertir con esta declaración "Usted no es el propietario" Nota - La función será pública.

.*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Ownership {
    
    address private owner;
     constructor () {
     owner = msg.sender;
    }
    
     function getOwner() public view returns(address) {
         require(msg.sender == owner, "You are not the owner");
         return owner; 
     }
}