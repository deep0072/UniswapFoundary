// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Hello.sol";

contract CounterTest is Test {
    HelloWorld public hello;

    function setUp() public {
        hello = new HelloWorld();
    }

    function testGreet() public {
        assertEq(hello.greet(), "Hello deep!");
    }

    // testFail is the reserve keyword to check failed condition
    function testFail() public {
        assertEq(hello.greet(), "Hell deep!");
        // it should be run successful run will decide the
        // it failling correctly
    }
}
