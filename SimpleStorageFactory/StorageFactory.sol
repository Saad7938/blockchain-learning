//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "Mapping/SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public{

        simpleStorage = new SimpleStorage();
    }
}