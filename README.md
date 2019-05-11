## Project

1.  There are three people: Alice, Bob & Carol.

2.  Alice wants to send funds to Bob, but she only has ether & Bob does not care about Ethereum and wants to be paid in local currency.

3.  Luckily, Carol runs an exchange shop that converts ether to local currency.

4.  Therefore, to get the funds to Bob, Alice will allow the funds to be transferred through Carol's exchange shop. Carol will collect the ether from Alice and give the local currency to Bob.

5.  The steps involved in the operation are as follows:

6.  Alice creates a Remittance contract with Ether in it and a puzzle.

7.  Alice sends a one-time-password to Bob; over SMS, say.

8.  Alice sends another one-time-password to Carol; over email, say.

9.  Bob treks to Carol's shop.

10. Bob gives Carol his one-time-password.

11. Carol submits both passwords to Alice's remittance contract.

12. Only when both passwords are correct does the contract yield the Ether to Carol.

13. Carol gives the local currency to Bob.

14. Bob leaves.

15. Alice is notified that the transaction went through.

## Setting up your environment 

* Check if Node.js and truffle are installed by typing in your 
terminal: 
    * `node -v` 
    * and then `truffle version`

* Install [Ganache](https://truffleframework.com/ganache)

* Initialize truffle `truffle init` to build a basic Truffle project

* Create package.json file  by typing `npm init`

* Install OpenZeeplin library `npm install openzeppelin-solidity`

* Write contracts in the contracts folder.

* Modify `truffle-config.js` file (`truffle.js` for Mac). 

* Run `truffle compile` to compile the contract
    * Please check the required version of the Solidity compiler (for all .sol files including imported libraries) 
    * by running `truffle version`. 
    * If needed, run `npm uninstall -g truffle` 
    * and the `npm install -g truffle`
* Create `2_splitter_migration.js` in the migrations folder.

* Run Ganache on your machine (select Quickstart)

* Run `truffle migrate --reset` to migrate the contract.