pragma solidity ^0.4.18;

import "./Core.sol";
contract CoreDeployer {

    address owner;
    mapping(string=>address)  cores;
    function getAddressFromCores(string keyvalue) constant returns (address){
        return cores[keyvalue];
    }
    function CoreDeployer() public{
        owner = msg.sender;
    }

    function createCore(string name,string symbol) public returns(Core){
        Core core = new Core(name,symbol);
        cores[symbol]=core;
        return core;
    }
    function hi() public returns(bool) {
      return true;
    }
}
