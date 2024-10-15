 SPDX-License-Identifier MIT
pragma solidity ^0.8.20;

import @openzeppelincontractstokenERC721extensionsERC721URIStorage.sol;
import @openzeppelincontractsaccessOwnable.sol;
import @openzeppelincontractsutilsCounters.sol;

contract Blockdemia is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

     The fixed token URI for all tokens
    string private constant TOKEN_URI = httpsipfs.filebase.ioipfsQmU48nezo2EGgGPNnBSbu4c65E2Chpj8zBVgQLAfeCxfez;

    constructor(address initialOwner)
        ERC721(Blockdemia Certificate, BDC)
        Ownable(initialOwner)
    {}

    function mintCertificate() public {
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();
        
        _safeMint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, TOKEN_URI);
    }

    function tokenURI() public pure returns (string memory) {
        return TOKEN_URI;
    }
}