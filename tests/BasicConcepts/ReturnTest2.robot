*** Settings ***
Library           SeleniumLibrary

# Notice that although a value is assigned to a scalar variable, it can be used as a list variable if it has a list-like value 
# and as a dictionary variable if it has a dictionary-like value.

*** Test Cases ***
Return Example with Scalar variable
    ${list} =    Create List    first    second    third
    Length Should Be    ${list}    3
    Log Many    @{list}
    
    
# Assigning list variables
# If a keyword returns a list or any list-like object, it is possible to assign it to a list variable:
List Return Example
    @{list} =    Create List    first    second    third
    Length Should Be    ${list}    3
    Log Many    @{list}
    Log To Console    ${list}[0]  
    Log To Console    ${list}[1]  
    
Return Example with dicttionary
    &{dict} =    Create Dictionary    first=1    second=${2}    ${3}=third
    Length Should Be    ${dict}    3
    Log To Console    ${dict}
    Log To Console   ${dict.first}  
 
Assign multiple
    ${a}    ${b}    ${c} =    Get Three
    ${first}    @{rest} =    Get Three
    @{before}    ${last} =    Get Three
    ${begin}    @{middle}    ${end} =    Get Three
    Log To Console    ${before}
    Log To Console    ${before}    
    
*** Keywords ***
Get Three    
    @{list} =    Create List    first    second    third
    [Return]    @{list}
    