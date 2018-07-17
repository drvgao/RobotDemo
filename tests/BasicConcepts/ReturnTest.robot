*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Google Devops And Find Eficode
    @{url_browser} =  Set Variable  https://www.google.fi    Firefox
    Open Browser To Google  @{url_browser}
    Search For Devops
    ${ReturnedInfo} =  Result Should Contain Eficode    10 s    #argument value.
    Log to console  ${ReturnedInfo}
    End web test

*** Keywords ***
Open Browser To Google
    [Arguments]    @{url_browser}
    Open Browser    @{url_browser}[0]  @{url_browser}[1] 
    Maximize Browser Window
    Google Should Be Open

Search For Devops
    Input Text    lst-ib    Eficode Devops
    Press Key    lst-ib    \\13

Result Should Contain Eficode
    [Arguments]    ${eficode}    #arguments in scalar variables.
    Wait Until Page Contains    www.eficode.com    ${eficode}
    [Return]    Found eficode!

Google Should Be Open
    Location Should Contain    www.google.fi
    
End web test
    Close Browser    