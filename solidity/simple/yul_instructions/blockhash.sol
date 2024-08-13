//! { "cases": [ {
//!     "name": "zero",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0"
//!             ]
//!         }
//!     ],
//!     "expected_eravm": [
//!         "0"
//!     ],
//!     "expected_evm": [
//!         "0x3737373737373737373737373737373737373737373737373737373737373737"
//!     ]
//! }, {
//!     "name": "small_ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "19"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "current_minus_257",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "43"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "current_minus_256",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "44"
//!             ]
//!         }
//!     ],
//!     "expected_eravm": [
//!         "0x3737373737373737373737373737373737373737373737373737373737373763"
//!     ],
//!     "expected_evm": [
//!         "0"
//!     ]
//! }, {
//!     "name": "current_minus_255",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "45"
//!             ]
//!         }
//!     ],
//!     "expected_eravm": [
//!         "0x3737373737373737373737373737373737373737373737373737373737373763"
//!     ],
//!     "expected_evm": [
//!         "0"
//!     ]
//! }, {
//!     "name": "ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "122"
//!             ]
//!         }
//!     ],
//!     "expected_eravm": [
//!         "0x37373737373737373737373737373737373737373737373737373737373737B1"
//!     ],
//!     "expected_evm": [
//!         "0"
//!     ]
//! }, {
//!     "name": "current_minus_one",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "299"
//!             ]
//!         }
//!     ],
//!     "expected_eravm": [
//!         "0x3737373737373737373737373737373737373737373737373737373737373862"
//!     ],
//!     "expected_evm": [
//!         "0"
//!     ]
//! }, {
//!     "name": "current",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "300"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "current_plus_one",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "301"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "big_ordinar",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "23492394923"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! }, {
//!     "name": "max",
//!     "inputs": [
//!         {
//!             "method": "main",
//!             "calldata": [
//!                 "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!             ]
//!         }
//!     ],
//!     "expected": [
//!         "0"
//!     ]
//! } ] }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a) external view returns(uint256 result) {
        assembly {
            result := blockhash(a)
        }
    }
}
