*** Settings ***
Library  ../../src/demo/ExtendedVariables.py

*** Variables ***
# ${DICTIONARY} =  {1: 'one', 2: 'two', 3: 'three'}   

*** Test Cases ***
Extended Variables Example
    [Tags]    clas
    [Documentation]    python class test
    ${lib}=    _MakeMyClass    rajesh    pizza
    Log To Console    ${lib.name}
    Log To Console    ${lib.eat('Cucumber')}
    # Log To Console    ${DICTIONARY[2]}
    
Class test
    ${lib}=    Get Library Instance    ../../src/demo/myClass.py
    Log To Console    ${lib.name}
    Log To Console    ${lib.eat('Cucumber')}

*** Keywords ***
_MakeMyClass
    [Arguments]    ${arg1}    ${arg2}
    ${lib} =   makeMyClass    ${arg1}    ${arg2}
    [Return]    ${lib}   
    