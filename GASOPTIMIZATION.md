<!-- https://betterprogramming.pub/how-to-write-smart-contracts-that-optimize-gas-spent-on-ethereum-30b5e9c5db85 -->

Gas optimization Techniques

1. Variable packing - ensure that variables that we are trying to pack do not exceed the 32 byte limit
2. Data Location - you will not save space by packing function arguments / local variables
3. Reference data types - More gas efficient to initialize a tightly packed struct with separate assignments
4. Memory vs. Storage - Call data is always cheaper than storage (manipulate loca memory variable before assigning it to storage variable)
5. Array size - Fixed size variables are cheaper than dynamic ones (same for strings)
6. Mapping vs. Array - Mapping almost always better, unless it's a smaller data types
7. Initializing - uint256 value; is cheaper than uint256 value = 0;.
8. Require strings - make them cheaper by limiting string length to 32 bytes
9. Minimize on chain data
10. Write literal values instead of computed ones
11. Short circuiting - When an operation has || or &&, have the low cost one comes first (||\_ vs &&)
12. Unnecessary libraries - remove unnecessary libraries that are not being used
13. Explicit function visibility: Three main types of storage
    - storage - variable is a state variable (store on blockchain)
    - memory - variable is in memory and it exists while a function is being called
    - calldata - special data location that contains function arguments, only available for external functions
14. Proper data types
    - uint instead of string
    - uint256 instead of uint8
    - bytes instead of bytes[]
    - limit bytes
    - bytes32 is cheaper than string.
15. Remove dead code that never runes (due to always returning false)
16.
