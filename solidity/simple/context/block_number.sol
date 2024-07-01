//! { 
//!     "targets": ["EraVM"],
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
//!         "300"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns(uint) {
        uint block_number = block.number;
        return block_number;
    }
}
