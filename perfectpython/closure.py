
def count():
    c = 0
    def _count():
        nonlocal c
        c += 1
        return c
    return _count
