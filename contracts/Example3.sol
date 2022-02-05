pragma solidity ^0.8.4;

// uint256 marginPercentage not needed
// Not public, no getter/setter, it's just a constant.
// Replace with '30'

contract Example3 {
    //uint256 marginPercentage = 30;
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForSender = (amount * (100 - 30)) / 100;
        amountForOwner = (amount * 30) / 100;
    }

}