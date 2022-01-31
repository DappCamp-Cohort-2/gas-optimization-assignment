//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        uint sum_arr;
        for (uint idx = 0; idx < arr.length; idx++){
            sum_arr += arr[idx];
        }
        counter += sum_arr;
    }
}