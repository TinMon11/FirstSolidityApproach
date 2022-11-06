/* crea una estructura => struct Libro {
    -  titulo
    - autor
    - uint256 paginas
    - bookid
    }
1. Crea dos funciones : 
a) setLibro(title(string), author(string), pages(uint256), bookid(id)
para setear estos parametros.
b) getLibro() para obtener los datos del libro, autor, titulo paginas e id.
2. La funcion debe ser publica.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract structLibros {

    struct Libro { 
        string _titulo;
        string _autor;
        uint256 _paginas;
        uint256 _bookid;
    }
    

    Libro _thisLibro;
    
    function setLibro(string memory title, string memory author, uint256 pages, uint256 id) public {
        _thisLibro._titulo = title;
        _thisLibro._autor = author;
        _thisLibro._paginas = pages;
        _thisLibro._bookid = id;
    }

    function getLibro() public view returns (Libro memory) {
        return _thisLibro;
    }
}