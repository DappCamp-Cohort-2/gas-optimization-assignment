pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        uint sum = arr[0];
        for (uint32 idx=1; idx<arr.length; idx++) {
            sum += arr[idx];
        }
        counter = counter + sum;
    }
}