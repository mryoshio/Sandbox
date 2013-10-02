
def fire():
    """this is docstring test"""
    print 'fire'
    return True

def fire2():
    """
    this is docstring test
    by fire2
    """
    print 'fire2'
    return True

if __name__ == '__main__':
    print fire.__doc__
    print fire2.__doc__
