//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//ether payments
//modifiers
//visibility
//events
//enums


//booking a hotel room and payment with cryptocurrency
contract HotelRoom{ 
    //vacant
    //occupied... to track this, we use enum

    enum Statuses { Vacant, Occupied}; // vacant and occupied are two options for enum(datatype) Status
    Statuses currentSatus;

    address payable public owner;   //eth address of the hotel owner

    constructor(){ 
        owner= msg.sender;
        currentStatus= Statuses.Vacant;
    }
    function bookRoom() payable{        //payable rakhepaxi ether transactions ko code garna milxa
        //first we pay the owner of the hotel room
        currentStatus = Statuses.Occupied
        owner.transfer(msg.value);   //transfer function sends crypto to the recepient i.e. owner 
     }
} 