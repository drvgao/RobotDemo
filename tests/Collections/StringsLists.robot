*** Settings ***
Library           String
Library           Collections

*** Test Cases ***
StringsAndLists
    ${SOME_VALUE}=    Set Variable    "Test Value"
    Log    ${SOME_VALUE}
    @{WORDS}=    Split String    ${SOME_VALUE}    ${SPACE}
    ${FIRST}=    Get From List    ${WORDS}    0
    Log to console    ${FIRST}
    
    