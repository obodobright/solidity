//SPDX-License-Identifier: MIT
//To start any solidity file, you need to write the version and possiby the licences identifier for sharing code;
pragma solidity 0.8.18;

//to start writing a contract, use the keyword contract which serves as const or class in OOP

contract SimpleStorage {
    uint256 myStorage;
}

contract ApisEtherium {
    string firstName = "Bright";
    string lastName = "Obodo";
    uint phoneNumber = 9064892235;
    uint256 age = 25;
    string houseAddress = "19, ogunleti street ojota";
    bool isMarried = false;
    bool isChildren = false;
    address myAddress = 0x2a3e7E625505c15f8421c7a8f9214984aDe3d7D8;

}

contract changeNumbers {
    uint256 public myNumber;

    function numberUpdate(uint256 _numbers) public {
        myNumber = _numbers;
        myNumber = myNumber + 1;
    }

   bool public  isActive;
    
    struct House{
        string housType;
        uint256 amount;
    }
    struct models{
        string name;
        string  version;
    }

    models public hyundiaCar = models({
        name:"Hyundria Elantra",
        version:"2023"
    });

    struct Routine {
        uint256 wakeTime;
        string todayDate;
        string jogTime;
    }

    Routine[] public routine;

    Routine public brightRoutine = Routine({
        wakeTime:6,
        todayDate:"April 29th",
        jogTime:"0 hhhrs"
    });

    struct People{
        uint256 totalNumber;
        string groupName;
    }

    People[] public people;

    struct FamilyNumber{
        uint256 total;
        string surname;
        uint noOfBoys;
        uint noOfGirls;

    }

    FamilyNumber[] public family;

    FamilyNumber public ObodoFamily = FamilyNumber({
        total:6,
        surname:"Obodo",
        noOfBoys:2,
        noOfGirls:2
    });

    struct BtcWallet{
        string accName;
        address numbers;
        bool active;
    }
    BtcWallet[] public wallets;

    BtcWallet public wallet  = BtcWallet({accName:"Obodo Bright",numbers:0xd9145CCE52D386f254917e481eB44e9943F39138,
    active:true
    });



    function updateUserStatus (bool _active ) public{
        isActive = _active;
    }

    function retrieveActive() public view returns(bool) {
        return isActive;
    }
    function retriveFavNumber () public view returns(uint256){
        return myNumber;
    }
//0xd9145CCE52D386f254917e481eB44e9943F39138
}