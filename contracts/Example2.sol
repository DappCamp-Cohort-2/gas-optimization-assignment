pragma solidity ^0.8.4;

contract Example2 {
    uint256 public counter;

    function incrementBy(uint256[] calldata arr) public {
        uint256 temp;
        for (uint256 idx = 0; idx < arr.length; idx++) {
            temp += arr[idx];
        }

        counter += temp;
    }
}
