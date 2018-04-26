pragma solidity ^0.4.0;

contract ArrayStorageOverrideFixed {

    bool public isHacked;
    uint[] public array;

    function pop() public {
        // This is a possible fix to avoid underflows
        require(array.length > 0);
        array.length--;
    }

    function insert(uint _key, uint _value) public {
        require(_key < array.length);
        array[_key] = _value;
    }

    function size() public view returns (uint) {
        return array.length;
    }
}
