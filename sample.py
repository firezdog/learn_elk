from contextlib import contextmanager

class Foo:
    def __enter__(self):
        print('hello')
    
    def __exit__(self, type, value, traceback):
        print('goodbye')
    

with Foo() as dog:
    print(dog)

@contextmanager
def bar():
    yield print('hello')

with bar() as c:
    print(c)