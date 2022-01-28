pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        uint arrSum;
        for (uint idx = 0; idx < arr.length; idx++){
            arrSum += arr[idx];
        }
        counter += arrSum;
    }
}