// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.15;

import {Test} from "forge-std/Test.sol";
import {SampleContract} from "../contracts/SampleContract.sol";

contract SampleContractTest is Test {
    SampleContract sampleContract;
    uint256 number;

    function setUp() public {
        sampleContract = new SampleContract();
        sampleContract.setNumber(1);
    }

    function testSetNumber() public {
        number = sampleContract.number();
        assertEq(number, 1);
    }
}
