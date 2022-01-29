pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] memory arr) public {
        uint total = counter;
        for (uint idx = 0; idx < arr.length; idx++){
            assembly {
                total := add(total, mload(add(add(arr, 0x20), mul(idx, 0x20))))
            }
        }

        counter = total;
    }
}