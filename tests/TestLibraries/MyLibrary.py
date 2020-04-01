from robot.api.deco import keyword
import time
from robot.api import logger

class MyLibrary:

    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    def __init__(self):
        self._counter = 0

    def count(self):
        self._counter += 1
        print(self._counter)

    def clear_counter(self):
        self._counter = 0
        
    def my_keyword(self, arg):
        return self._helper_method(arg)

    def _helper_method(self, arg):
        return arg.upper()
    
    #     Using a custom keyword name
    @keyword('Login Via Player Portal')
    def login(self, username, password):
        pass
    
    #     keyword tags
    @keyword(tags=['tag1', 'tag2'])
    def hello(self, name):
        print('hello, ', name)

    @keyword('Custom name', ['tags', 'here'])
    def another_example():
        pass
    
    # ARGUMENTS
    def any_arguments(*args):
        print("Got arguments:")
        for arg in args:
            print(arg)
            
    def one_required(required, *others):
        print("Required: %s\nOthers:" % required)
        for arg in others:
            print(arg)

    def also_defaults(req, def1="default 1", def2="default 2", *rest):
        print(req, def1, def2, rest)
    
    #Keyword-only arguments    
    def sort_words(*words, case_sensitive=False):
        key = str.upper() if case_sensitive else None
        return sorted(words, key=key)
    
    # logging
    def example_time_keyword(self):
        print('*INFO:%d* Message with timestamp' % (time.time()*1000))
        
    def log_to_console_and_log_file(self, arg):
        logger.info('Got arg %s' % arg, also_console=True)
        
    def my_log_keyword(self, arg):
        logger.debug('Got argument %s' % arg)
        self._do_something()
        logger.info('<i>This</i> is a boring example', html=True)
        logger.console('Hello, console!')
        
    def _do_something(self):
        print("this is awesome learning.")