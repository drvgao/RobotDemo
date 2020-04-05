*** Settings ***
Library    MyLibrary    

*** Test Cases **
Normal test case
    Example keyword    first argument    second argument

Templated test case
    [Template]    Example keyword
    first argument    second argument
    
*** Keywords ***
Example keyword   
    [Arguments]  ${username}    ${password} 
    Log    ${username}, ${password}