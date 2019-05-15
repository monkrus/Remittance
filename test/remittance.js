const Remittance = artifacts.require("./Remittance.sol");

let instance;
beforeEach ('Remittance', (accounts) => {
 
  it("should set the initial fee", async ()=> {
    const instance = await Remittance.deployed();
    const fee = await constructor.setFee();
 
  assert.equal(setFee, 10);

    
  it("should return the list of accounts", async ()=> {
        console.log(accounts);
      });
    });

  
    it('fee should be set only by owner', async()=>{
      await instance.setFee(onlyOwner);
      const value = await instance.setFee();
   
      assert.equal(value, 'newFee');

    });
  });