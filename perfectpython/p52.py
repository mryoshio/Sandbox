
def main():
    for i in range(1, 6):
        if i % 2 == 0:
            print 'odd'
        else:
            print 'even'

def question():
    a = input('your age? ')
    print 'you are %i years old' % a

if __name__ == '__main__':
    main()
    question()
