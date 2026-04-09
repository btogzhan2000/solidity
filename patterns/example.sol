// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract HelloWorld {
    string public greeting = "Hello, World!";

    function setGreeting(string memory newGreeting) public {
        greeting = newGreeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }
}