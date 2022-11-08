const { expect } = require("chai");

describe('Testing on Owner Contract', () => { 

    it("Should return the owner of the contract", async function () {

        const contractFactory = await ethers.getContractFactory("Ownership");
        const ContractInstance = await contractFactory.deploy();

        const [owner] = await ethers.getSigners();

        expect(await ContractInstance.getOwner()).to.equal(owner.address)
    })
 })