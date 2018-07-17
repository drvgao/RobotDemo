*** Settings ***
Library     SeleniumLibrary
Documentation    1. Verify search feature available: KW has parent child xpath ex.

*** Variables ***
${Username}       student
${Password}       MaharaDemo
${Browser}        chrome
${SiteUrl}        http://demo.mahara.org
${DashboardTitle}    Dashboard - Mahara
${Delay}          5s

*** Test Cases ***
LoginTest
    Open Browser to the Login Page
    Enter User Name
    Enter Password
    Click Login
    sleep    ${Delay}
    Verify search feature available
    Assert Dashboard Title
    [Teardown]    Close Browser

*** Keywords ***
Open Browser to the Login Page
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Enter User Name
    Input Text    login_login_username  ${Username}

Enter Password
    Input Text    login_login_password  ${Password}

Click Login
    click button    login_submit
    
Verify search feature available
    Input Text    xpath=//span[@id="usf_query_container"]/input  hello    #parent, child xpath example

Assert Dashboard Title
    Title Should be    ${DashboardTitle}