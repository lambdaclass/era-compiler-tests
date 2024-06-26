a: Bytes[200]
b: Bytes[200]
@external
def f(_len: uint256) -> Bytes[200]:
    x: Bytes[200] = slice(b"\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1A\x1B\x1C\x1D\x1E\x1F\x20\x21\x22\x23\x24\x25\x26\x27\x28\x29\x2A\x2B\x2C\x2D\x2E\x2F\x30\x31\x32\x33\x34\x35\x36\x37\x38\x39\x3A\x3B\x3C\x3D\x3E\x3F\x40\x41\x42\x43\x44\x45\x46\x47\x48\x49\x4A\x4B\x4C\x4D\x4E\x4F\x50\x51\x52\x53\x54\x55\x56\x57\x58\x59\x5A\x5B\x5C\x5D\x5E\x5F\x60\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6A\x6B\x6C\x6D\x6E\x6F\x70\x71\x72\x73\x74\x75\x76\x77\x78\x79\x7A\x7B\x7C\x7D\x7E\x7F\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8A\x8B\x8C\x8D\x8E\x8F\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9A\x9B\x9C\x9D\x9E\x9F\xA0\xA1\xA2\xA3\xA4\xA5\xA6\xA7\xA8\xA9\xAA\xAB\xAC\xAD\xAE\xAF\xB0\xB1\xB2\xB3\xB4\xB5\xB6\xB7\xB8\xB9\xBA\xBB\xBC\xBD\xBE\xBF\xC0\xC1\xC2\xC3\xC4\xC5\xC6\xC7", 0, _len)
    self.a = x
    for i: uint256 in range(200):
        if not i < _len:
            break
        assert slice(self.a, i, 1) == slice(x, i, 1)
    self.b = self.a
    for i: uint256 in range(200):
        if not i < _len:
            break
        assert slice(self.b, i, 1) == slice(x, i, 1)
    return self.b

# ====
# compileViaYul: also
# ----
# f(uint256): 0 -> 0x20, 0x00
# f(uint256): 12 -> 0x20, 0x0c, 0x0102030405060708090a0b0000000000000000000000000000000000000000
# gas legacy: 59345
# gas legacyOptimized: 57279
# f(uint256): 31 -> 0x20, 0x1f, 0x0102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e00
# gas irOptimized: 121741
# gas legacy: 124364
# gas legacyOptimized: 119898
# f(uint256): 32 -> 0x20, 0x20, 1780731860627700044960722568376592200742329637303199754547598369979440671
# gas irOptimized: 130733
# gas legacy: 135431
# gas legacyOptimized: 130829
# f(uint256): 33 -> 0x20, 33, 1780731860627700044960722568376592200742329637303199754547598369979440671, 0x2000000000000000000000000000000000000000000000000000000000000000
# gas irOptimized: 137732
# gas legacy: 142238
# gas legacyOptimized: 137518
# f(uint256): 63 -> 0x20, 0x3f, 1780731860627700044960722568376592200742329637303199754547598369979440671, 14532552714582660066924456880521368950258152170031413196862950297402215316992
# gas irOptimized: 152352
# gas legacy: 160728
# gas legacyOptimized: 152168
# f(uint256): 129 -> 0x20, 0x81, 1780731860627700044960722568376592200742329637303199754547598369979440671, 0x202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f, 29063324697304692433803953038474361308315562010425523193971352996434451193439, 0x606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f, -57896044618658097711785492504343953926634992332820282019728792003956564819968
# gas irOptimized: 406089
# gas legacy: 423017
# gas legacyOptimized: 406021
