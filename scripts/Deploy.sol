// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/NFTMarketplace.sol"; // Updated relative path

contract DeployNFTMarketplace is Script {
    function run() public {
        vm.startBroadcast();

        NFTMarketplace marketplace = new NFTMarketplace();
        console.log("NFTMarketplace deployed to:", address(marketplace));

        vm.stopBroadcast();
    }
}
