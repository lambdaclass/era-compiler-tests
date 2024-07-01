//! { 
//!     "targets": ["EVMInterpreter"],
//!     "cases": [ {
//!     "name": "main",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0xa86c2e601b6c44eb4848f7d23d9df3113fbcac42041c49cbed5000cb4f118777"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns(uint) {
        uint _difficulty = block.difficulty;
        return _difficulty;
    }
}
