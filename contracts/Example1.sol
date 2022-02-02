pragma solidity ^0.8.4;

contract Example1 {

    uint64 public amount;
    uint8 public day;
    address public ownerAddr;

    // optimization 2: set values in ctor
    constructor() {
        amount = 1000;
        day = 10;
        ownerAddr = 0x4e653b730367e303D30d8FB39d7350D07a60dfD6;
    }
}