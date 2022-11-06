const { expect } = require("chai");


describe("Testing on Students Contract", function () {

  it("Should return student searched", async function () { 
    const estudiantes = await ethers.getContractFactory("Estudiantes");
    const estudiantesContract = await estudiantes.deploy();
    await estudiantesContract.setEstudiante("Marta",9,7,8)
    await estudiantesContract.setEstudiante("Ruben",10,9,8)
    const name1 = ({...await estudiantesContract.getEstudiante(1)}[1])
    const name2 = ({...await estudiantesContract.getEstudiante(2)}[1])
    expect(name1).to.equal("Marta")
    expect(name2).to.equal("Ruben")
  })
  

  it("Should return math OK", async function () { 
    const estudiantes = await ethers.getContractFactory("Estudiantes");
    const estudiantesContract = await estudiantes.deploy();
    await estudiantesContract.setEstudiante("Martin",9,7,8)
    await estudiantesContract.setEstudiante("Roberto", 10,9,2)
    await estudiantesContract.setEstudiante("Laura", 8,5,10)
    expect(await estudiantesContract.getNotaMatematica(1)).to.equal("9")
    expect(await estudiantesContract.getNotaMatematica(2)).to.equal("10")
    expect(await estudiantesContract.getNotaMatematica(3)).to.equal("8")
  })
   
}); 