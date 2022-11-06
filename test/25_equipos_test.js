const { expect } = require("chai");


describe("Testing on Teams Contract", function () {

    it("Should add/get a player OK", async function () {
        const [owner, addr1, addr2] = await ethers.getSigners();
        const teams = await ethers.getContractFactory("Teams");
        const teamsContract = await teams.deploy();

        await teamsContract.setPlayers(addr1.address);
        await teamsContract.setPlayers(addr2.address);
        expect(await teamsContract.getPlayer(0)).to.equal(addr1.address)
        expect(await teamsContract.getPlayer(1)).to.equal(addr2.address)
    })

}); 