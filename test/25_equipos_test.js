const { expect } = require("chai");


describe("Testing on Teams Contract", function () {

    it("Should add/get a player OK", async function () {
        const ContractFactory = await ethers.getContractFactory("Teams");
        const ContractInstance = await ContractFactory.deploy();
        const [owner, addr1, addr2] = await ethers.getSigners();

        await ContractInstance.setPlayers(addr1.address);
        await ContractInstance.setPlayers(addr2.address);
        expect(await ContractInstance.getPlayer(0)).to.equal(addr1.address)
        expect(await ContractInstance.getPlayer(1)).to.equal(addr2.address)
    })

}); 