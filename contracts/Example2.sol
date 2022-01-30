pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;

    function incrementBy(uint[] calldata arr) public {
        uint total;
        for (uint idx = 0; idx < arr.length; idx++){
            total += arr[idx];
        }
        counter += total;
    }
}
