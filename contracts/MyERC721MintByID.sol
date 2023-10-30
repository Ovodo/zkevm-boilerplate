// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@imtbl/zkevm-contracts/contracts/token/erc721/preset/ImmutableERC721MintByID.sol";

contract MyERC721MintByID is ImmutableERC721MintByID {
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
    ImmutableERC721MintByID(
      owner,
      name,
      symbol,
      baseURI,
      contractURI,
      operatorAllowlist,
      receiver,
      feeNumerator
    )
  {
    
  }
  function mintTokenByID(uint256 tokenId)  external payable {
  // Check if the token ID has already been minted.
  require(_exists(tokenId), "Token ID already minted.");

  // Mint the token to the sender.
  _safeMint(msg.sender, tokenId);
}

}
