#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "10"
#!     ]
#! } ] }

@external
@pure
def main() -> uint256:
    sum: uint256 = 0
    for i: int256 in range(57896044618658097711785492504343953926634992332820282019728792003956564819957, 57896044618658097711785492504343953926634992332820282019728792003956564819967):
        sum += 1
    return sum
