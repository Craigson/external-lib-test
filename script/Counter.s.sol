// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import { Counter } from "../src/Counter.sol";
import { Uncounter } from "../src/Uncounter.sol";

contract CounterScript is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.broadcast(deployerPrivateKey);
        Counter counter = new Counter();
        Uncounter unCounter = new Uncounter();
        console.log(address(counter));
        console.log(address(unCounter));
        vm.stopBroadcast();
    }
}
