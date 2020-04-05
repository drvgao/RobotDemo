*** Settings ***
Library    OperatingSystem    
*** Test Cases ***
Test creating a file
    Create a file
    
    
*** Keywords ***
Create a file
    Create Binary File    ${CURDIR}${/}input.txt    Some text here${\n}on two lines
