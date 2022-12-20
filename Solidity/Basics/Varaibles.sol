pragma solidity ^0.8.10;

contract Variables{

    /* `public` means that the variable can be accessed internally
     by the contract and can also be read by the external world
    */
    //uint stands for unsigned integer, meaning non negative integers
    //different sizes are available.

     /*
        ******** State variable **********
     */  
    uint public u8=10;
    uint public u256 = 600; // uint is an alias for uint256

    int public i = -123; // int is same as int256 support negative numbers

    // address stands for an ethereum address
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa7;

    // bool stands for boolean
    bool public defaultBoo1 = false;

    // Default values
    // Unassigned variables have a default value in Solidity
    bool public defaultBoo2; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000

    function doSomething() public {
        /*
        ******** Local variable **********
        */  
         uint ui = 456;
        /*
        ******** Global variable **********
        *//*
            block.timestamp tells us whats the timestamp for the current block
            msg.sender tells us which address called the doSomething function
        */
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
     }
}