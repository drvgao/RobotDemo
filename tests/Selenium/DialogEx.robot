*** Settings ***
Library    Dialogs
Documentation    This is a test with keywords.
Library     SeleniumLibrary
Resource    ../../Resources/kws.robot
Resource    ../../Resources/Common.robot
Test Teardown    End Web Test

*** Variables ***
# ${Browser}        chrome
${SiteUrl}        http://demo.mahara.org
${Delay}          5s

*** Test Cases ***
LoginTestWithResourceKeyWords
    ${Browser} =  Get Selection From User    which browser?   chrome    firefox
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    # Execute Manual Step  Do something manually
    Enter User Name
    Enter Password
    Pause Execution
    Click Login
    Set Browser speed
    Assert Dashboard Title

*** Keywords ***
    
    