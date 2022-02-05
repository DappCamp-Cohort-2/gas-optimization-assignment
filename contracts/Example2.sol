pragma solidity ^0.8.4;

// Adding with sum reduces gas from 50355 to 49467
// Not enough yet!

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        uint sum = 0;
        for (uint idx = 0; idx < arr.length; idx++){
            sum += arr[idx];
        }
        counter += sum;
    }
}