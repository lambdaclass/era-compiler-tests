contract D { constructor() payable {} }
contract C {
	uint public x;
	constructor() payable {}
	function f(uint amount) public returns (D) {
		x++;
		return (new D){value: amount}();
	}
	function stack(uint depth) public payable returns (address) {
		if (depth > 0)
			return this.stack(depth - 1);
		else
			return address(f(0));
	}
}
// ====
// EVMVersion: >=byzantium
// ----
// constructor(), 20 wei
// gas irOptimized: 177446
// gas legacy: 285547
// gas legacyOptimized: 168515
// f(uint256): 20 -> 0x5a0187777208a69e9b7337d8726071de2a548168
// x() -> 1
// f(uint256): 20 -> FAILURE
// x() -> 1
// stack(uint256): 1023 -> FAILURE
// gas irOptimized: 259624
// gas legacy: 477722
// gas legacyOptimized: 299567
// x() -> 1
// stack(uint256): 10 -> 0x305e3aea70a4d408cddb066f38aa5ceaec234c97
// x() -> 2
