pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        uint temp = 0;
        for (uint idx = 0; idx < arr.length; idx++){
            temp += arr[idx];
        }
        counter += temp;
    }
}