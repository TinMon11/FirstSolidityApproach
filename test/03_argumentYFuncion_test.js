const { expect } = require("chai");


describe("Testing on Arguments Set / Get", function () {

  it("Should set/get the value correctly", async function () {
    
    const arguments = await ethers.getContractFactory("argumentyFuncion");

    const argumentContract = await arguments.deploy();
    const value = 3;
    await argumentContract.set(value);
    expect(await argumentContract.get()).to.equal(value);
  });
}); 