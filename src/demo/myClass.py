'''
Created on Mar 11, 2019

@author: RDURGAM
'''
class MyClass(object):
    def __init__(self, arg1, arg2):
        self.arg1 = arg1
        self.arg2 = arg2
        
    @classmethod
    def makeMyClass(arg1, arg2):
        return MyClass(arg1, arg2)