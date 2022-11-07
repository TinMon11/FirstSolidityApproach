const { expect } = require("chai");

describe('Testing on Owner Contract', () => { 

    it("Should return the owner of the contract", async function () {

        const Ownership = await ethers.getContractFactory("Ownership");
        const ownerContract = await Ownership.deploy();

        const [owner] = await ethers.getSigners();

        expect(await ownerContract.getOwner()).to.equal(owner.address)
    })
 })