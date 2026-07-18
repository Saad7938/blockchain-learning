// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // this is the solidity version

contract SimpleStorage {
   
    uint256  myFavouriteNumber; // when no visibility type is mentioned it is consider as internal.
    
   struct Person {
    uint256 favouriteNumber;
    string name;
   }
 
    Person[] public listOfPeople;//initilized to []

    mapping(string =>uint256 )   public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber=_favouriteNumber;
    }
    

   function retrive() public view returns(uint256){
        return myFavouriteNumber;
    }

    function addPeople(uint256 _favouriteNumber,string memory _name) public {
        listOfPeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name]=_favouriteNumber;

    }
}