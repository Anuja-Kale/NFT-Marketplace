/*
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/contracts/NFTMarketplace.sol";

contract NFTMarketplaceTest is Test {
    NFTMarketplace marketplace;

    function setUp() public {
        marketplace = new NFTMarketplace();
    }

    function testDeployment() public view {
        // Basic test to ensure the contract deploys and the owner is set correctly
        assertEq(marketplace.getOwner(), address(this), "Owner should be the deployer");
    }

    function testMintingToken() public {
        // Provide a fake URI for the NFT and a price
        string memory tokenURI = "https://example.com/nft.json";
        uint256 price = 1 ether;
        
        // The contract may require sending value to mint an NFT if there is a fee
        uint256 tokenId = marketplace.createToken{value: marketplace.getListPrice()}(tokenURI, price);

        // Check if the token has been minted with the correct URI and price
//(ListedToken memory token) = marketplace.getListedTokenForId(tokenId);
    //    assertEq(seller, address(this), "Seller should be the minter");
     //   assertEq(marketplace.tokenURI(tokenId), tokenURI, "Token URI should match the provided URI");
    }
}
*/