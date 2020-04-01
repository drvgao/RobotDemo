*** Settings ***
Documentation  Variable files contain variables that can be used in the test data
Variables    ../../Resources/VariablesDemo.py

*** Variables ***

*** Test Cases ***
Example 1A
    Log Many    example.com    80       # Connect gets two strings as arguments

Example 1B
    Log Many    example.com    ${80}    # Connect gets a string and an integer

Example 2
    Log Many    ${3.14}    ${-1e-4}        # Do X gets floating point numbers 3.14 and -0.0001
    
create integers also from binary, octal, and hexadecimal values using 0b, 0o and 0x prefixes    
    Should Be Equal    ${0b1011}    ${11}
    Should Be Equal    ${0o10}      ${8}
    Should Be Equal    ${0xff}      ${255}
    Should Be Equal    ${0B1010}    ${0XA}
    
# Boolean and None/null variables
Boolean
    Log To Console    ${true}               # Set Status gets Boolean true as an argument
    Log To Console    something   ${false}    # Create Y gets a string and Boolean false

None
    Log To Console    ${None}                   # Do XYZ gets Python None as an argument

Null example
    ${ret} =    Get Value        # Checking that Get Value returns Java null
    Should Be Equal    ${ret}    ${null}    

# Space and empty variables    
One space
    Should Be Equal    ${SPACE}          \ \

Four spaces
    Should Be Equal    ${SPACE * 4}      \ \ \ \ \

Ten spaces
    Should Be Equal    ${SPACE * 10}     \ \ \ \ \ \ \ \ \ \ \

Quoted space
    Should Be Equal    "${SPACE}"        " "

Quoted spaces
    Should Be Equal    "${SPACE * 2}"    " \ "

Empty
    Should Be Equal    ${EMPTY}          \
*** Keywords ***
Get Value    
    [Return]    ${None}    
    
