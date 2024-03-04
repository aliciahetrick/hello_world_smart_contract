// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >=0.7.3;

contract HelloWorld {
    event UpdatedMessages(string oldString, string newString);

    string public message;

    constructor (string memory initMessage) {
        message = initMessage;
    }

    function update(string memory newMessage) public{
        string memory oldMessage = message;
        message = newMessage;
        emit UpdatedMessages(oldMessage, newMessage);
    }
}