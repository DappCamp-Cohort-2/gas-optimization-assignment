pragma solidity ^0.8.4;

contract Example3 {
    // uint256 marginPercentage = 30;

    function getOwnerMargin(uint256 amount) public pure returns (uint256 amountForSender, uint256 amountForOwner) {
        uint _margingPercentage = 30;
        amountForSender = (amount * (100 - _margingPercentage)) / 100;
        amountForOwner = (amount * _margingPercentage) / 100;
    }

}