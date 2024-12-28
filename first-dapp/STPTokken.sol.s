
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//import ERC20 contracts from openzapplin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

//contract X {.....}
contract STPToken is ERC20 {

// we also want to call the constract present
// inside ERC20
    constructor(string memory _name, string memory _symbol) 
    ERC20(_name, _symbol){
        //Get some token for ourself
        //msg.sender is the person who deploy the contract
        _mint(msg.sender, 10000000 * (10 ** 18));
        //This is our constractor
    }

}