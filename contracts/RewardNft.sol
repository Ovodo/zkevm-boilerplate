// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@imtbl/zkevm-contracts/contracts/token/erc721/preset/ImmutableERC721.sol";


contract RewardNft is ImmutableERC721 {
       constructor(
    address owner,
    string memory name,
    string memory symbol,
    string memory baseURI,
    string memory contractURI,
    address operatorAllowlist,
    address receiver,
    uint96 feeNumerator
  )
    ImmutableERC721(
      owner,
      name,
      symbol,
      baseURI,
      contractURI,
      operatorAllowlist,
      receiver,
      feeNumerator
    ){

    }



    /// @dev mint `amount` of NFTs with sequential token IDs to `to`
    function primarySale(uint256 tokenId) external payable {
    require(!exists(tokenId), "NFT has already been minted");
       
            _safeMint(msg.sender, tokenId);
    }

   
}