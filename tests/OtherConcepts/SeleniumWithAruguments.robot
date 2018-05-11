*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Google Devops And Find Eficode
    Open Browser To Google
    Search For Devops
    Result Should Contain Eficode    10 s    #argument value.
    End web test

*** Keywords ***
Open Browser To Google
    Open Browser    https://www.google.fi    browser=Firefox
    Maximize Browser Window
    Google Should Be Open

Search For Devops
    Input Text    lst-ib    Eficode Devops
    Press Key    lst-ib    \\13

Result Should Contain Eficode
    [Arguments]    ${eficode}    #arguments in scalar variables.
    Wait Until Page Contains    www.eficode.com    ${eficode}

Google Should Be Open
    Location Should Contain    www.google.fi
    
End web test
    Close Browser    