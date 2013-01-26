import sys

def is_random_sorted(s1, s2):
    if sorted(list(s1)) == sorted(list(s2)):
        return True
    else:
        return False

print is_random_sorted(sys.argv[1], sys.argv[2])
