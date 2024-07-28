// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArbitrageBot {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function executeTrade(address dex1, address dex2, uint256 amount) external {
        // Placeholder for trade execution logic
    }

    function withdrawProfit() external {
        require(msg.sender == owner, "Only the owner can withdraw profits.");
        payable(owner).transfer(address(this).balance);
    }

    // Allow contract to receive ETH
    receive() external payable {}
}
