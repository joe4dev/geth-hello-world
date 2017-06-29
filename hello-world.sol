pragma solidity ^0.4.11;

contract HelloWorld {
    /* this runs when the contract is executed */
    function HelloWorld() public { }

    /* main function */
    function sayHello() constant returns (string) {
        return "Hello World";
    }
}
