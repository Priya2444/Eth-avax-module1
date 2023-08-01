// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract mod1avaxNew {
    function game(int256 num) external pure returns (bool) {
        
        require(num > 0, "Value must be greater than 0");
        require(num < 100, "Value must be less than 100");
        require(num != 69, "value should not be 69");

        assert(num % 7 == 0);
        if (num <= 20) {
            revert("Value is smaller than 20");
        }
        return true;
    }
}