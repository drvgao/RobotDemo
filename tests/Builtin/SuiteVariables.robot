*** Settings ***
Documentation    keywords. Clear and easy to follow approach.
...    Allows creating independent keywords and facilitates re-use.
...    Looks like programming and thus not so good on the test case level.

*** Variables ***
${USER}
${STATUS}
*** Test Cases ***
Withdraw From Account
    Withdraw From Account    $50
    Withdraw Should Have Succeeded

*** Keywords ***
Withdraw From Account
    [Arguments]    ${amount}
    ${STATUS} =    Withdraw From User Account
    Set Test Variable    ${STATUS}

Withdraw Should Have Succeeded
    Should Be Equal    ${STATUS}   SUCCESS
    
Withdraw From User Account
    [Return]    SUCCESS