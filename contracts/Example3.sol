//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

contract Example3 {
    uint8 marginPercentage = 30;
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForSender = (amount * (100 - marginPercentage)) / 100;
        amountForOwner = (amount - amountForSender);
        // amountForOwner = (amount * marginPercentage) / 100;
    }

}