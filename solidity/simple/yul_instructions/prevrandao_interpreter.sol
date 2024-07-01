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
//!         "0xa86c2e601b6c44eb4848f7d23d9df3113fbcac42041c49cbed5000cb4f118777"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.18;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := prevrandao()
        }
    }
}
