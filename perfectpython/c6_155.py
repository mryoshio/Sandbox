def ham(self, arg):
    print(arg)

class MetaSpam(type):
    @classmethod
    def __prepare__(metacls, name, bases):
        return {'ham': ham}

class Spam(metaclass=MetaSpam):
    pass

Spam().ham(arg=100)
