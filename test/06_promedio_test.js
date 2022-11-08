const { expect } = require("chai");


describe("Testing on Promedio Contract", function () {
  it("Should return the average of the 3 numbers", async function () {
    
    const contractFactory = await ethers.getContractFactory("promedio");

    const contractInstance = await contractFactory.deploy();
    const a = 3;
    const b = 12;
    const c = 15;
    const prom = (a+b+c)/3
    expect(await contractInstance.returnPromedio(a,b,c)).to.equal(prom);
  });
}); 