// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.13;
import "./zombies.sol";
import "./storage.sol";

contract StorageFactory{
    Zombies[] public zombsArray;
    addPeople public adds;
    Adds public newAdds;
    addPeople[] public toAddPeople;
    Adds[] public myNewAdd;

function addNewPeople () public{
    adds = new addPeople();
}
function newAdd ()public{
    newAdds = new Adds();
}

    function createSimpleStorage ()public{
       Zombies zombs = new Zombies();
       zombsArray.push(zombs);
    }

    // to access a function object in another contract inside the like a function inside one of the contract we 
    // are importing.

    function sfStore (uint256 _zombIndex, string memory _name, uint256 _age, bool _converted) public {
        // address and ABI to access the diffrent functions in Zombie factory;
        Zombies zombie = zombsArray[_zombIndex];
        zombie.addZombie(_name, _age, _converted);
    }

    // to access a contract inner function or object, we will need to get the address and the ABI, to implement this;

    function retrieveZombieContract (uint256 _zomIndex, string memory _name, uint256 _age, bool _converted) public{
        // declared a variable with the type of Zombie which was declared from the import statement;
        Zombies zomsInteract = zombsArray[_zomIndex];
        // with the above you have been able to target the ABI and in a way move into the zOMBIE Contract.
        zomsInteract.addZombie(_name, _age, _converted);
    }

    function stAdds (uint _personIndex,string memory _name,uint256 _age, string memory _dob, string memory _location, uint256 _phone) public {
        addPeople newPerson = toAddPeople[_personIndex];
        newPerson.AddPeople(_name, _age, _dob, _location, _phone);
    }

    function access4NewAdds (string memory _name, uint256 _year, uint256 _addsIndex) public {
        Adds addSome = myNewAdd[_addsIndex];
        addSome.AddSocials(_name, _year);
    }

    // with the various functions to access the different functions inside different contracts, when it the contract is deployed, 
    // we will not still get access until we retrieve them
    // to get/ retrieve the function we will create a function that returns a uint256;

   

}