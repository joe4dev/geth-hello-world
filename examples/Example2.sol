pragma solidity ^0.4.10;
contract Example2 {
    struct Account {
		string addr;
		uint amount;
    }
    mapping (uint => Account) accounts;
    
    function getAmount(uint _index) constant returns (uint) {…}
    function getAddr(uint _index) constant returns (string) {…}
    function set(uint _index, string _addr, uint amount) {…}

}
