// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // this is the solidity version

contract SimpleStorage {
    // favouriteNumber will be initialized to 0 as a default value.
    uint256 public favouriteNumber;
    // there are 4 visibility types i.e. public,private,internal and external.
    //variables can not be external. 
    // functions can use all four types of visibility.

    function store(uint256 _favouriteNumber) public {
        favouriteNumber=_favouriteNumber;
        retrive();
    }
    

    // view and pure.
    //view allows to only retrive a state variable data. you can not update or modify anything inside view funciton.
    // pure is more strict then view. you can not mpdify or retrive the value of a state variable.it only works with prameters,local variables and constants
    function retrive() public view returns(uint256){
        return favouriteNumber;
    }
    
}