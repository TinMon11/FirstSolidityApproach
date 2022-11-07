const { expect } = require("chai");
let contractFactory;
let contractInstance;


describe("Testing on Students Contract", function () {

  describe("Deploy", function () {
    it("Should deploy the smart contract", async function () {
      contractFactory = await ethers.getContractFactory("Estudiantes");
      contractInstance = await contractFactory.deploy();
      await contractInstance.deployed();
    })
  })


  describe("Testing student contract functions", function () {

    it("Should add & then return student searched", async function () {

      await contractInstance.setEstudiante("Marta", 9, 7, 8)
      await contractInstance.setEstudiante("Ruben", 10, 9, 8)
      const name1 = ({ ...await contractInstance.getEstudiante(1) }[1])
      const name2 = ({ ...await contractInstance.getEstudiante(2) }[1])
      expect(name1).to.equal("Marta")
      expect(name2).to.equal("Ruben")
    })


    it("Should return math OK", async function () {
      expect(await contractInstance.getNotaMatematica(1)).to.equal("9")
      expect(await contractInstance.getNotaMatematica(2)).to.equal("10")
    })
  })
}); 