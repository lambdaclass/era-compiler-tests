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
//!         "1"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function main() public returns(uint) {
        uint chainId = block.chainid;
        return chainId;
    }
}
