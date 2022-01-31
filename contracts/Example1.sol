pragma solidity ^0.8.4;

contract Example1 {

    /*
    original layout:
    arg1: day -> size: 008 bits
    arg2: amt -> size: 256 bits
    arg3: adr -> size: 160 bits (20 bytes)
    */

    // optimization 1a: packing --> put day and address next to each other (amount gets its own mem block)
    // optimization 1b: address + day = 160 + 8 = 168 bits
    // -> leaves 256 - 168 = 88 bits on the block
    // --> can use up to a uint64 for amount
    uint8 public day;
    uint64 public amount;
    address public ownerAddr;

    // optimization 2: set values in ctor
    constructor() {
        day = 10;
        amount = 1000;
        ownerAddr = 0x4e653b730367e303D30d8FB39d7350D07a60dfD6;
    }

}