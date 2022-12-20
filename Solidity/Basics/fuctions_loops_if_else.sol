// Define the compiler version you would be using
pragma solidity ^0.8.10;

contract Conditions {
    // State variable to store a number
    uint public num;
    // getters and setters fuction(like oop java)
    function set(uint _num) public {
        // It is a declared as a public function meaning
        // it can be called from within the contract and also externally
        num=_num;
    }
     function get() public view returns (uint) {
        // It is declared as a view function meaning
       //  that the function doesnt change the state of any variable.
        return num;
    }
    /*
        Name of the function is foo.
        It takes in  uint and returns an uint.
        It compares the value of x using if/else
    */
    
    function foo(uint x) public returns (uint){
        if(x<10){
            return 0;
        }else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    } 
    /*
        Name of the function is loop.
        It runs a loop till 10
    */
    function loop() public {
        // for loop
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }
    }

}