// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

contract TokenContract {

    address public owner;
    struct Receivers {
        string name;
        uint256 tokens;
    }

    mapping(address => Receivers) public users;

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    constructor(){
        owner = msg.sender;
        users[owner].tokens = 100;
    }

    function double(uint _value) public pure returns (uint){
        return _value*2;
    }

    function register(string memory _name) public{
        users[msg.sender].name = _name;
    }

    function giveToken(address _receiver, uint256 _amount) onlyOwner public{
        require(users[owner].tokens >= _amount);
        users[owner].tokens -= _amount;
        users[_receiver].tokens += _amount;
    }

    // 1 token = 5 Ether
    uint256 public constant TOKEN_PRICE = 5 ether;

    function buyToken(uint256 _amount) public payable {
        require(users[owner].tokens >= _amount, "El propietario no tiene suficientes tokens");
        require(msg.value >= _amount * TOKEN_PRICE, "Ether enviado insuficiente: 1 token = 5 Ether");
        users[owner].tokens -= _amount;
        users[msg.sender].tokens += _amount;
    }

    // Cantidad de Ether (en wei) que hay en el contrato
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
