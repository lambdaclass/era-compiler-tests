//! { 
//!     "targets": ["EVMInterpreter"],
//!     "cases": [ {
//!     "name": "default",
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

pragma solidity >=0.5.14;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := chainid()
        }
    }
}
