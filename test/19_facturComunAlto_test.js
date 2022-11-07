const { expect } = require("chai");

describe("Testing Greatest Common Factor.", function () {

  it("Should return The Greatest Common Factor", async function () {

    const FCM = await ethers.getContractFactory("factorComunAlto");

    const factorComunContract = await FCM.deploy();
    var number1 = 75;
    var number2 = 60;

    //Calculo Factor Comun
    while (number2!= 0) {
      _temp = number2;
      number2 = number1 % number2;
      number1 = _temp;
  }
    expect(await factorComunContract.FactorComun(number1,number2)).to.equal(number1);
  });
}); 