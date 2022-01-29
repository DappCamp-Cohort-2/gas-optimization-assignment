//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

// https://mudit.blog/solidity-gas-optimization-tips/ - #10

contract Example2 {
    uint256 public counter;

    function incrementBy(uint256[] calldata arr) external {
        uint256 j;
        for (uint256 idx = 0; idx < arr.length; idx++) {
            j += arr[idx];
        }
        counter = j;
    }
}
