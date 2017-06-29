# Geth Installation 

Please install **Geth** and **Solidity**:

* For **Geth**, please follow this [guide](https://github.com/ethereum/go-ethereum/wiki/Building-Ethereum) for Windows, OSX, or Linux. 
* To install **Solidity**, follow this [guide](http://solidity.readthedocs.io/en/develop/installing-solidity.html#binary-packages) for Windows, OSX, or Linux.

# Test Your Solidity Installation
If Solidity is installed, you can open a terminal and check the version:

	solc --version

The output should look like this:

	Version: 0.4.11+commit.68ef5810.Linux.g++

# Test Your Geth Installation
If Geth is installed, you can open a terminal and start Geth:

	geth --rinkeby --fast
    
The synchronization of the blockchain takes a while (~10 minutes). After the synchronization (or if you have at least reached block nr. [448813](https://rinkeby.etherscan.io/block/448813)), in a new terminal tab/window, attach to Geth to open the JavaScript console

	geth attach $HOME/.ethereum/rinkeby/geth.ipc


### Call *sayHello()*-Method

The [HelloWorld contract](../master/hello-world.sol) has already been deployed by us. The contract address is *0xEC90Dc181274b3Aa38ec6d1f0d098aFE07D6a6f7*. The transaction for the deployment is [here](https://rinkeby.etherscan.io/tx/0xccdc9e24095e3fc6a54aefccf545063838bf5f9ffe4a7597f2a71ae18649ac9f). 

To call the *sayHello()*-Method, execute in the JavaScript Console tab/window:

	var abi = [{"constant":true,"inputs":[],"name":"sayHello","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"inputs":[],"payable":false,"type":"constructor"}];
	var aimsHelloWorldContractInstance = eth.contract(abi).at("0xEC90Dc181274b3Aa38ec6d1f0d098aFE07D6a6f7");

	aimsHelloWorldContractInstance.sayHello(); // OUTPUT: "Hello World"
    
If the output is "Hello World" then you have successfully installed Geth and you are ready for the AIMS Smart Contract Lab!
