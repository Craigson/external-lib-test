// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";
import "../src/Uncounter.sol";

contract CounterTest is Test {
    Counter public counter;
    Uncounter public unCounter;

    function setUp() public {
        counter = new Counter();
        unCounter = new Uncounter();
        counter.setNumber(0);
        unCounter.setNumber(10);
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testDecrement() public {
        unCounter.decrement();
        assertEq(unCounter.number(), 9);
    }

    function testSetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    
        
        unCounter.setNumber(x);
        assertEq(unCounter.number(), x);
    }

    function testLib() public {
 
        counter.increment();
        counter.increment();
        assertEq(counter.number(), 2);
        counter.addItUp(5);
        assertEq(counter.number(), 10);

        unCounter.addItUp(10);
        assertEq(unCounter.number(), 100);
    }
}
