pragma solidity ^0.8.4;

contract Example3 {
    uint256 marginPercentage;

    constructor ()  {
        marginPercentage = 30;
    }
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        uint _marginpercentage = marginPercentage;
        amountForSender = (amount * (100 - _marginpercentage)) / 100;
        amountForOwner = (amount * _marginpercentage) / 100;
    }

}