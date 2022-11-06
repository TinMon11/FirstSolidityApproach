
/*Crear un array que almacene las direcciones de los jugadores del equipo.


1. Crear un array(tipo de dirección) que almacene sólo 16 elementos.
2. getTeamPlayers() - Para devolver todos los elementos del array.
3. selectJerseyNumber() - Tomará sólo un argumento de tipo uint y devolverá la dirección de los jugadores del array creado anteriormente. 
a) El argumento pasado a la función debe ser mayor que igual a cero y menor que igual a 15. [Sugerencia - Use require]
*/

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Teams {

   struct Jugador {
       uint jersey;
       address wallet;
   }

    mapping(uint256 => Jugador) _Jugadores;

    uint playersCount = 0;
    
    function setPlayers(address direccion) public returns(bool success, address wallet) {
        require(playersCount < 16, "Lista Maxima de Jugadores Alcanzada");
        _Jugadores[playersCount] = Jugador({
            jersey: playersCount,
            wallet: direccion
        });
       wallet = _Jugadores[playersCount].wallet;
       playersCount += 1; 
       success = true;
   }

   function getPlayer(uint256 jerseyNumber) public view returns(address playerAddress) {
       
       require(jerseyNumber <= 15, "Debe ser Menor a 16");
       require(jerseyNumber >= 0, "Debe ser Mayor a 0");

       for (uint i = 0; i < playersCount; i++) {
           if (_Jugadores[i].jersey == jerseyNumber) {
               playerAddress = _Jugadores[i].wallet;
           }
       }
   }
}