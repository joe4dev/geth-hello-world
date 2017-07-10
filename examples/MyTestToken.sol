pragma solidity ^0.4.10;
contract ERC20PartialInterface {
    function totalSupply() constant returns (uint);
    function balanceOf(address _owner) constant returns (uint);
    function transfer(address _to, uint _value) returns (bool);
    event Transfer(address indexed _from, address indexed _to, uint _value);
}
contract YourTestToken is ERC20PartialInterface {
    string public constant name = "Your Token Name";
    string public constant symbol = "YTN";
    function totalSupply() constant returns (uint totalSupply) {…}
    function balanceOf(address _owner) constant returns (uint balance) {…}
    function transfer(address _to, uint _value) returns (bool success) {…}
}
