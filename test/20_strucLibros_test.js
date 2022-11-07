const { expect } = require("chai");
let contractFactory;
let contractInstance;


describe('Testing on strucLibros', () => {

    describe("Deploy", function () {
        it("Should deploy the smart contract", async function () {
            contractFactory = await ethers.getContractFactory("structLibros")
            contractInstance = await contractFactory.deploy();
            await contractInstance.deployed();
        })
    })

    describe("Seting/Getting Book", function () {
        it("Should set the book", async function () {
        await contractInstance.setLibro("La vida de Diegote", "G. Coppola", 100,2)
        const getBook = await contractInstance.getLibro()
        expect(getBook._autor).to.equal("G. Coppola")
        expect(getBook._bookid).to.equal("2")

    })

    })

});

