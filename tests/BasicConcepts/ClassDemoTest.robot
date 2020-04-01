*** Settings ***
Library  ../../src/demo/ClassDemo.py  
Library  ../../Resources/CustomLib/CustomLib.py    

*** Test Cases ***
Class test
    &{all libs} =	Get library instance	all=True
    Make My Class    Hello from make my class, deep