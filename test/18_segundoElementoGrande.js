const { expect } = require("chai");


describe("Tests on 2nd Biggest Element Contract", function () {

  it("Should return the 2nd biggest element of an array", async function () {

    const contractFactory = await ethers.getContractFactory("segundoGrande");

    const contractInstance = await contractFactory.deploy();
    const array = [1, 5, 7, 2, 3, 5, 4, 19]
    expect(await contractInstance.find2ndBigger(array)).to.equal(7);
  });
}); 