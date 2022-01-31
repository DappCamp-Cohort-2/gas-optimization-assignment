pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;

    // optimization: 'calldata' instead of 'memory' (not altering input arr arg)
    function incrementBy(uint[] calldata arr) public {
        // optimization: less reads on 'counter' -> maintain function-local sum of arr
        uint arrSum;
        for (uint idx = 0; idx < arr.length; idx++){
            arrSum += arr[idx];
        }
        // optimization: less reads on 'counter'
        counter += arrSum;
    }
}