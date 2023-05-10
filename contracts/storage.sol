//SPDX-License-Identifier:MIT
pragma solidity ^0.8.9;

contract myStorage {
    bool isMorning = true;
    int256 totalAmount = 200;
    uint256 balance = 0;
    string modleName = "Chakra UI blockhain";
    address myAddress = 0x2a3e7E625505c15f8421c7a8f9214984aDe3d7D8;
    uint256 userId;

    function store(uint256 _favNumber) public{
        userId = _favNumber;
    }

}

contract addPeople {
    struct People {
        string name;
        uint256 age;
        string dob;
        string location;
        uint256 phone;

    }

    struct Shifts {
        string name;
        uint256 time;
    }
    People[] public people;
    Shifts[] public shift;

    function AddShifts (string memory _name, uint256 _favNumber) public {
        shift.push(Shifts(_name,_favNumber));
    }

    function AddPeople(string memory _name, uint256 _age, string memory _dob, string memory _location, uint256 _phone) public{
        people.push(People(_name,_age,_dob,_location,_phone));
    }

}

contract Adds {
    mapping (string => uint256) public name2FavNumber;

    struct Socials {
        string name;
        uint256 year;
    }

    Socials[] public socialMedia;
    mapping (string => uint256) public nameToYearMaps;

    function AddSocials (string memory _name, uint256 _year) public {

        Socials memory newSocial = Socials({name:_name, year:_year});
        socialMedia.push(newSocial);
        nameToYearMaps[_name] = _year;

    }

    uint256 numbers = 1998;

    struct ClubMembers {
        string name;
        uint256 age;
        
    }
   
   mapping(string => uint256) public nameToAge;

    ClubMembers[] public club;

    function AddNewMember (string memory _name, uint256 _age) public {
        club.push(ClubMembers(_name, _age));
        nameToAge[_name] = _age;
    }

    struct footballTeam {
        string name;
        uint256 numberOfPLayers;
        uint256 averageAge;
        string jerseyType;

    }

    footballTeam public Rangers = footballTeam({name:"Rangers", numberOfPLayers:23, averageAge:20, jerseyType:"Yellow"});
    footballTeam public Chelsea = footballTeam({name:"Chelsea", numberOfPLayers:45, averageAge:23, jerseyType:"Blue"});

    footballTeam[] public teams;
    mapping(string => string) public nameToJerseyType;
    function AddNewTeam (string memory _name, uint256 _numberOfPLayers, uint256 _avaerageAge, string memory _jerseyType) public {
        // teams.push(footballTeam(_name,_numberOfPLayers,_avaerageAge, _jerseyType));
        footballTeam memory newTeam = footballTeam({name:_name, numberOfPLayers:_numberOfPLayers, averageAge:_avaerageAge, jerseyType:_jerseyType});
        teams.push(newTeam);
        nameToJerseyType[_name] = _jerseyType;
    }

}