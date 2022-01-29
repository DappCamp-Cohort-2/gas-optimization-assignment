pragma solidity ^0.8.4;

contract Example3 {
    function getOwnerMargin(uint8 amount)
        external
        pure
        returns (uint8 amountForSender, uint8 amountForOwner)
    {
        amountForSender = (amount * 70) / 100;
        amountForOwner = (amount * 30) / 100;
    }

}