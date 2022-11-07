const { expect } = require("chai");

describe('Testing on Array Sum', () => { 

    it("Should return the SUM of array elements", async ()=> {

        const sumArrays = await ethers.getContractFactory("sumaArray");
        const sumaArrayContract = await sumArrays.deploy();
        const array = [2,6,1,2,6,8]
        let sum = 0;
        for (let i = 0; i < array.length; i++) {
            sum = sum + array[i];
        }
        expect(await sumaArrayContract.suma(array)).to.equal(sum)

    })
 })
