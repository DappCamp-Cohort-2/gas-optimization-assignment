pragma solidity ^0.8.4;

contract Example3 {

    function getOwnerMargin(uint256 amount)
        public
        pure
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        uint256 marginPercentage = 30;
        amountForSender = (amount * (100 - marginPercentage)) / 100;
        amountForOwner = (amount * marginPercentage) / 100;
    }

}