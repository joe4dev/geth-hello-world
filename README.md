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


### Call *sayHello()*-Method

The [HelloWorld contract](../master/hello-world.sol) has already been deployed. The contract address is *0xEC90Dc181274b3Aa38ec6d1f0d098aFE07D6a6f7*. The transaction for the deployment is [here](https://rinkeby.etherscan.io/tx/0xccdc9e24095e3fc6a54aefccf545063838bf5f9ffe4a7597f2a71ae18649ac9f). 

To call the *sayHello()*-Method, open the JavaScript Console tab/window and execute:

	var abi = [{"constant":true,"inputs":[],"name":"sayHello","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"inputs":[],"payable":false,"type":"constructor"}];
	var aimsHelloWorldContractInstance = eth.contract(abi).at("0xEC90Dc181274b3Aa38ec6d1f0d098aFE07D6a6f7");

	aimsHelloWorldContractInstance.sayHello(); // OUTPUT: "Hello World"
    
If the output is "Hello World" then you have successfully installed geth and you are ready for the AIMS Smart Contract Lab.
