a: immutable(uint8)

@deploy
def __init__():
    a = 2

@external
@view
def f() -> uint256:
    return convert(a, uint256)
    
# ====
# compileViaYul: also
# ----
# f() -> 2
