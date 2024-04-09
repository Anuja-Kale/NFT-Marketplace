// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/contracts/NFTMarketplace.sol"; // Updated relative path

contract DeployNFTMarketplace is Script {
    function run() public {
        vm.startBroadcast();

        NFTMarketplace marketplace = new NFTMarketplace();
        console.log("NFTMarketplace deployed to:", address(marketplace));
// Define event to emit contract address and ABI
    event ContractDeployed(address indexed contractAddress, string ABI);

    constructor() {
        // Emit event with contract address and ABI
        emit ContractDeployed(address(this), "Your contract ABI string");
    }
        vm.stopBroadcast();
    }
}
