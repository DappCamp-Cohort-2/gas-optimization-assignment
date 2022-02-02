pragma solidity ^0.8.4;

contract Example2 {
    uint256 public counter; //Change this uint8

    function incrementBy(uint256[] calldata arr) external {
        //Using calldata instead
        uint256 _counter; //Switching the for loop
        uint256 _arrLength = arr.length; //Creating value for arr.length
        for (uint8 idx = 0; idx < _arrLength; idx++) {
            _counter += arr[idx];
        }
        counter = _counter;
    }
}
