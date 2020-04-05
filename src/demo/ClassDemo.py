'''
Created on Mar 13, 2019

@author: RDURGAM
'''
from robot.libraries.BuiltIn import BuiltIn

def title_should_start_with(expected):
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    title = seleniumlib.get_title()
    if not title.startswith(expected):
        raise AssertionError("Title '%s' did not start with '%s'"
                             % (title, expected))
        
def makeMyClass(messages):
    BuiltIn._yield_logged_messages("", messages)
