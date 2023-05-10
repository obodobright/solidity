// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Zombies {
    uint256 dnaZombie = 10;
    uint256 dnaModulos = dnaZombie ** 10;

    struct Zombie{
        string name;
        uint256 age;
        bool isConverted;
    }

    


    // Zombie public Satoshi = Zombie({name:"Satoshi", age:20, isConverted:true});
    // Zombie public Nokomoyo = Zombie({name:"Nakomoyo", age:30, isConverted:false});
    mapping(string => bool) public findZombie;
    Zombie[] public zoms;
        function addZombie (string memory _name, uint256 _age, bool _converted) public{
            
        zoms.push(Zombie(_name,_age,_converted));
        findZombie[_name] = _converted;
    }


}
contract getterFunction {
    mapping(string => uint256) public greetsMe;

    struct howGreetings {
        string sound;
        uint256 times;
    }

    howGreetings public YorubaGreeting = howGreetings({
        sound:"E ka roo ma",
        times:2
    });

    struct Houses {
        string houseType;
        string location;
    } 
    Houses[] public NigeriaHouses;
    mapping (string => string) public houseMaps;

    function getHouse (string memory _houseType, string memory _location) public {
        Houses memory bungalow = Houses({houseType:_houseType, location:_location});
        NigeriaHouses.push(bungalow);
        houseMaps[_location] = _houseType;
        // NigeriaHouses.push(Houses(_houseType, _location));
    }

    string greetings = "Hello bright";
    // a public function that is for ony returning the state variable
    function sayHello () public view  returns (string memory){
        return greetings;
    }
    function _sayHellos (string memory greeting) private pure returns(string memory){
        return greeting;
    }

}
