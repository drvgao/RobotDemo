*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}        chrome
${SiteUrl}        http://demo.mahara.org
${Delay}          5s

*** Keywords ***
Begin Web Test
    open browser    about:blank    ${Browser}
    Maximize Browser Window

End Web Test
    Close Browser
    
Set Browser speed    
    sleep    ${Delay}
    
Insert Testing Data
    Log    I am setting up testing data.
    Test kw1
    Test kw2
    
Cleanup Testing Data
    Log    I am cleaning up the test data.
    
Test kw1
    Log    doing kw1
    
Test kw2
    Log    doing kw2                