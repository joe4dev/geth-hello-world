# Geth Installation 

Please follow this [guide](https://github.com/ethereum/go-ethereum/wiki/Building-Ethereum) for installing Geth with Windows, OSX, or Linux. To install Solidity, follow this [guide](http://solidity.readthedocs.io/en/develop/installing-solidity.html#binary-packages) for Windows, OSX, or Linux.

# Deploy a Hello World Contract with Geth


### Prerequisites
Assuming that you have [Geth](https://github.com/ethereum/go-ethereum/wiki/geth) and [Solidity](http://solidity.readthedocs.io/en/develop/installing-solidity.html) installed, have an account and have some Ether's on you account.

An alternative to the Solidity Compiler is the online [Remix - Solidity IDE](https://ethereum.github.io/browser-solidity/).

To gain some Ether's use [Ether faucet](https://www.rinkeby.io/).


### Starting Geth Console
Open Terminal and start Geth :

	geth --rinkeby --fast
    

In a new Terminal tab/window, attach to Geth and open the JavaScript Console

	geth attach $HOME/.ethereum/rinkeby/geth.ipc
    
    
### Deploy Hello World Contract

First, open Terminal to complile the  Solidity file

	solc -o ./ --bin --abi  --overwrite hello-world.sol
    
This generates a .bin file and .abi file.

Within the Geth console and execute:

`personal.unlockAccount(eth.accounts[0])` to unlock the account for signing the transaction

	var abi = <content from .abi-file>;
	var myContract = eth.contract(abi); 
	var bytecode = '0x' + <content from .bin-file>;
	var txDeploy = {from:eth.accounts[0], data: bytecode, gas: 1000000}; 
	var myContractInstance = myContract.new(txDeploy);
    
A new contract has been created on the Ethereum Blockchain. We now can call the `sayHello()`-Method of the contract.


	myContractInstance.sayHello();
 
    
#### Running example:
    
    var abi = [{"constant":true,"inputs":[],"name":"sayHello","outputs":		[{"name":"","type":"string"}],"payable":false,"type":"function"},{"inputs":[],"payable":false,"type":"constructor"}];
	var myContract = eth.contract(abi); 
	var bytecode = '0x' + '6060604052341561000c57fe5b5b5b5b6101598061001e6000396000f30060606040526000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff168063ef5fb05b1461003b575bfe5b341561004357fe5b61004b6100d4565b604051808060200182810382528381815181526020019150805190602001908083836000831461009a575b80518252602083111561009a57602082019150602081019050602083039250610076565b505050905090810190601f1680156100c65780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b6100dc610119565b604060405190810160405280600b81526020017f48656c6c6f20576f726c6400000000000000000000000000000000000000000081525090505b90565b6020604051908101604052806000815250905600a165627a7a723058200553316d9da2135d210c09dfc642fb018cce2307030da3b315dd97765d78b4ef0029';
	var txDeploy = {from:eth.accounts[0], data: bytecode, gas: 1000000}; 
	var myContractInstance = myContract.new(txDeploy); 
    
    myContractInstance.sayHello(); // OUTPUT: "Hello World"

    
    
    
After creating a new `myContractInstance` has been created, there should be a log entry on the Geth node tab/window:
	
    INFO [06-29|15:38:19] Submitted contract creation fullhash=0xccdc9e24095e3fc6a54aefccf545063838bf5f9ffe4a7597f2a71ae18649ac9f contract=0xec90dc181274b3aa38ec6d1f0d098afe07d6a6f7
    
The transaction can be monitored by using [EtherScan](https://rinkeby.etherscan.io/tx/0xccdc9e24095e3fc6a54aefccf545063838bf5f9ffe4a7597f2a71ae18649ac9f).
    
    
    
    
