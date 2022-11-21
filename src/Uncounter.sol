// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { CounterLib} from "./CounterLib.sol";

contract Uncounter {

    using CounterLib for uint256;
    uint256 public number;

    function addItUp(uint256 value) public {
        number = number.multiply(value);
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function decrement() public {
        require(number > 0, "invalid");
        number--;
    }
}
