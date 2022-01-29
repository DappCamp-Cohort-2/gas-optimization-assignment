pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;

    function incrementBy(uint[] calldata arr) external {
        uint arrLength = arr.length;
        uint counterBranch;

        for (uint idx = 0; idx < arrLength; idx ++){
            counterBranch += arr[idx];
        }
        counter += counterBranch;
    }
}
