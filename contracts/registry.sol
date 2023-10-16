
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SteamXNamingService {
    struct Domain {
        address owner;
        address resolver;
        uint64 ttl;
        string domainData;
    }

    mapping(bytes32 => Domain) private domains;

    event NewOwner(bytes32 indexed node, address indexed owner);
    event Transfer(bytes32 indexed node, address owner);
    event NewResolver(bytes32 indexed node, address resolver);
    event NewTTL(bytes32 indexed node, uint64 ttl);
    event NewDomainData(bytes32 indexed node, string data);

    modifier onlyOwner(bytes32 node) {
        require(domains[node].owner == msg.sender, "Not the owner");
        _;
    }

    constructor() {
        domains[bytes32(0)].owner = msg.sender;
    }

    function setOwner(bytes32 node, address owner) external onlyOwner(node) {
        emit Transfer(node, owner);
        domains[node].owner = owner;
        emit NewOwner(node, owner);
    }

    function setResolver(bytes32 node, address resolver) external onlyOwner(node) {
        emit NewResolver(node, resolver);
        domains[node].resolver = resolver;
    }

    function setTTL(bytes32 node, uint64 ttl) external onlyOwner(node) {
        emit NewTTL(node, ttl);
        domains[node].ttl = ttl;
    }

    function setDomainData(bytes32 node, string memory data) external onlyOwner(node) {
        emit NewDomainData(node, data);
        domains[node].domainData = data;
    }

    function getDomainInfo(bytes32 node)
        external
        view
        returns (
            address owner,
            address resolver,
            uint64 ttl,
            string memory data
        )
    {
        owner = domains[node].owner;
        resolver = domains[node].resolver;
        ttl = domains[node].ttl;
        data = domains[node].domainData;
    }
}
