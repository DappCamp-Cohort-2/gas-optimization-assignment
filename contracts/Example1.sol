pragma solidity ^0.8.4;

contract Example1 {
    uint8 public day;
    uint16 public amount;
    address public ownerAddr;

    constructor() {
        day = 10;
        amount = 1000;
        ownerAddr = 0x4e653b730367e303D30d8FB39d7350D07a60dfD6;
    }
}
