*** Settings ***
Library    ../../Resources/CustomLib/CustomLib.py
Library    MyLibrary    
Library    MyDocLibrary

*** Variables ***
${str}
*** Test Cases ***
Test lib
    Do Something Special
    
Test lib kws
    ${str}=    My Keyword    this is a sapmle test library arg.
    Log    ${str}
    Count
    Login Via Player Portal    antman    Welcome1
    Hello    durgam
    Any Arguments    this    is    multi    arguments    test    year    2020
    Example Time Keyword
    Log To Console And Log File    my own log msg
    My Log Keyword    if u see this it's working.
    