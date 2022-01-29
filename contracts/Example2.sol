pragma solidity ^0.8.4;

contract Example2 {
    uint8 public counter;

    function incrementBy(uint8[] calldata arr) external {
        uint8 _local;
        for (uint8 idx = 0; idx < arr.length; idx++) {
            _local += arr[idx];
        }
        counter = _local;
    }
}
