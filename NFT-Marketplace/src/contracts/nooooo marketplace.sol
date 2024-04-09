// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721URIStorage {
    uint256 private _nextTokenId;
    // struct NFT {
    //     uint256 id;
    //     string uri;
    // }
    
    mapping (address => uint256[]) public ownedNFT;

    constructor() ERC721("MyNFT", "MNFT") {}

    function mintNFT(address to, string memory tokenURI)
        public
        returns (uint256)
    {
        uint256 tokenId = _nextTokenId++;
        _mint(to, tokenId);
        _setTokenURI(tokenId, tokenURI);
        ownedNFT[to].push(tokenId);

        return tokenId;
    }

    function getOwnedNFTs(address _owner) external view returns (uint256[] memory) {
        return ownedNFT[_owner];
    } 

}