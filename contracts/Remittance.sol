pragma solidity >=0.4.22 <0.7.0;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

import "openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol";

import "openzeppelin-solidity/contracts/math/SafeMath.sol";

// mapped struct with index
// stores the list of transactions
contract Remittance is Ownable, Pausable {
using SafeMath for uint;

  struct transactionList {
    uint transactionData;
    bool isTransaction;
  }


    struct transactionFlow {
    address initiator;
    address receiver;
    uint amount;
    uint expirationTime;
    bytes32 keyHash;

}





  mapping(address => Transaction) public allTransactions;
  address[] public transactionList;

  function isTransaction(address transactionAddress) public view returns(bool isIndeed) {
      return allTransactions[transactionAddress].isTransaction;
  }

  function getTransactionCount() public view returns(uint transactionCount) {
    return transactionList.length;
  }

  function newTransaction(address transactionAddress, uint transactionData) public returns(uint rowNumber) {
    if(isTransaction(transactionAddress)) revert("transaction not created");
    allTransactions[transactionAddress].transactionData = transactionData;
    allTransactions[transactionAddress].isTransaction = true;
    return transactionList.push(transactionAddress) - 1;
  }

  function updateTransaction(address transactionAddress, uint transactionData) public returns(bool success) {
    if(!isTransaction(transactionAddress)) revert("transaction not updated");
    allTransactions[transactionAddress].transactionData = transactionData;
    return true;
  }
}

