#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "zero_zero",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "0", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "0"
#!     ]
#! }, {
#!     "name": "ordinar",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "42", "64"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-22"
#!     ]
#! }, {
#!     "name": "to_min",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-1", "170141183460469231731687303715884105727"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "-170141183460469231731687303715884105728"
#!     ]
#! }, {
#!     "name": "to_max",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "170141183460469231731687303715884105727", "0"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "170141183460469231731687303715884105727"
#!     ]
#! }, {
#!     "name": "overflow",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-3435455454", "170141183460469231731687303714884105727"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! }, {
#!     "name": "overflow_minimal",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "-170141183460469231731687303715884105728", "1"
#!             ]
#!         }
#!     ],
#!     "expected": {
#!         "return_data": [],
#!         "exception": true
#!     }
#! } ] }

@external
@pure
def main(a: int128, b: int128) -> int128:
    return a - b
