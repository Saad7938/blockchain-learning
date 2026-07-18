// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // this is the solidity version

contract SimpleStorage {
    // favouriteNumber will be initialized to 0 as a default value.
    uint256  myFavouriteNumber; // when no visibility type is mentioned it is consider as internal.
    // there are 4 visibility types i.e. public,private,internal and external.
    //variables can not be external. 
    // functions can use all four types of visibility.

   // uint256[] listOfFavouriteNumbers; // Array of favouriteNumbers.

   struct Person {
    uint256 favouriteNumber;
    string name;
   }
 
   //Person public Saad = Person(3,"Saad");// this is the one way of initialzing.

   // Person public Saad = Person({favouriteNumber:3,name:"Saad"}); //This is the more specific way of initializing.

    //this is dynamic array.
    Person[] public listOfPeople;//initilized to []



    // Person[3] public listOfPeople; this is static array, because we have specified the max length.

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber=_favouriteNumber;
    }
    

    // view and pure.
    //view allows to only retrive a state variable data. you can not update or modify anything inside view funciton.
    // pure is more strict then view. you can not mpdify or retrive the value of a state variable.it only works with prameters,local variables and constants
    function retrive() public view returns(uint256){
        return myFavouriteNumber;
    }

    //EVM can write in several places. some important ones are calldata,memory,storage.

    //calldata and memory means that the variable is only going to exist temporarily.only for the duration of function call.
    //most variables automatically default to memory variable.
    //strings are special type (array of bytes). so we have to spcify memory or calldata. 
    //arrays,structs and mappings are special type in solidity. so we need to give them memory keyword. only memory not calldata.
    //difference between memory and calldata is that, memory variable can be changed/manipulated. Whereas calldata variables can not be modified.

    //memory is the temporary variable that can be modified.
    //calldata is the temporary variable that can not be modified.
    //storage is permanent variable that can be modified.
    //any variable created outside of a function inside of a contract, it is automatically be a storage variable.
    
    function addPeople(uint256 _favouriteNumber,string memory _name) public {
        listOfPeople.push(Person(_favouriteNumber, _name));


        //this is also a valid syntax.
        // Person memory newPerson = Person(_favouriteNumber,_name);
        // listOfPeople.push(newPerson);
    }
}