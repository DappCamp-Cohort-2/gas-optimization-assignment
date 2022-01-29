pragma solidity ^0.8.4;

contract Example3 {
    // uint256 marginPercentage;

    // constructor() {
    //   marginPercentage = 30;
    // }

    function getOwnerMargin(uint256 amount)
        external
        pure
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForSender = (amount * 70) / 100;
        amountForOwner = (amount * 30) / 100;
    }

}
