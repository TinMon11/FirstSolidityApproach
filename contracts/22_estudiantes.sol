/*
Crear una estructura -> struct Estudiante { string nombre; uint256[3] notas; }
Crear dos funciones:
a) set(nombre del estudiante, notas en matematica, nota en historia,nota en ingles) - Para establecer el nombre y las notas de un estudiante en el array notas. 
b) get(), para obtener el nombre, las notas en matemáticas, las notas en ciencias y las notas en inglés del estudiante. Nota - La función será pública.
*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Estudiantes{

    struct Estudiante {
        uint256 _id; 
        string _nombre;
        uint256[3] _notas;
    }

    mapping(uint256 => Estudiante) _Estudiantes;
    uint256 countEstudiantes = 0;
    
    function setEstudiante(
        string memory name, 
        uint256 matematica, 
        uint256 historia, 
        uint256 ingles) 
        public returns(bool success, string memory studentName) {

       _Estudiantes[countEstudiantes] = Estudiante({
           _id: countEstudiantes + 1,
           _nombre: name,
           _notas: [matematica,historia,ingles]
       });
        studentName = _Estudiantes[countEstudiantes]._nombre;
        countEstudiantes +=1;
        success = true;
        
    }

    function getEstudiante(uint256 studentId) public view returns(Estudiante memory student) {
        for (uint i = 0; i < countEstudiantes; i++) {
           if (_Estudiantes[i]._id == studentId) {
               student = _Estudiantes[i];
           }
       }
    }

    function getNotaMatematica(uint256 studentId) public view returns(uint256 nota) {
        for (uint i = 0; i < countEstudiantes; i++) {
           if (_Estudiantes[i]._id == studentId) {
               nota = _Estudiantes[i]._notas[0];
           }
       }
    }
}