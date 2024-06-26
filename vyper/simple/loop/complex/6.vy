#! { "modes": [ "V >=0.4.0" ], "cases": [ {
#!     "name": "main",
#!     "inputs": [
#!         {
#!             "method": "main",
#!             "calldata": [
#!                 "31"
#!             ]
#!         }
#!     ],
#!     "expected": [
#!         "2"
#!     ]
#! } ] }

# Report https://linear.app/matterlabs/issue/CPR-206/back-end-optimization-bug-minimized-complex-wrong-result

@external
@pure
def main(param: uint8) -> uint256:
    cnt: uint256 = 0

    for j: uint8 in [0, 1]:
        for h: uint8 in range(0, 1):
            if param == 4:
                return 40
            cnt += 1

    return cnt
