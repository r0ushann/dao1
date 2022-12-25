//SPDX-License-Indentifier : MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private value;

    //Emitted when the stored value changes
    event ValueChanged(uint256 newValue);

    // Stores a new Value in the contract
    function store(uint256 newValue) public onlyOwner {
        value = newValue;
        emit ValueChanged(newValue);
    }

    //Reads the last stroed value
    function retreive() public view returns (uint256) {
        return value;
    }
}
