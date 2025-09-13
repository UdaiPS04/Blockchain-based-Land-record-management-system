pragma solidity ^0.8.0;

contract LandRegistry {
    struct Land {
        uint id;
        string ownerName;
        string location;
    }

    uint public landCount = 0;
    mapping(uint => Land) public lands;

    function registerLand(string memory _ownerName, string memory _location) public {
        landCount++;
        lands[landCount] = Land(landCount, _ownerName, _location);
    }

    function getLand(uint _id) public view returns (uint, string memory, string memory) {
        Land memory l = lands[_id];
        return (l.id, l.ownerName, l.location);
    }
}
