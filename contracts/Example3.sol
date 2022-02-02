pragma solidity ^0.8.4;

contract Example3 {
    uint256 percentage = 30;
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForSender = (amount * (100 - percentage)) / 100;
        amountForOwner = (amount - amountForSender);
    }

}