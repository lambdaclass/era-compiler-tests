#! { "modes": [ "V 0.3.9", "V 0.3.10" ], "cases": [ {
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
def main() -> uint64:
    sum: uint64 = 0
    for i in range(4294967285, 4294967295):
        sum += 1
    return sum
